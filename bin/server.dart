import 'package:loud_question_server/loud_question_server.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';

import 'router_authorization_x.dart';

const _printLogsKey = 'print_logs';
const _envKey = 'env';
const _portKey = 'port';

const _defaultPort = 8080;

final _getIt = GetIt.instance;
final _logger = Logger('main');

void main(List<String> args) async {
  final parser = ArgParser()
    ..addOption(
      _envKey,
      defaultsTo: 'test',
    )
    ..addFlag(
      _printLogsKey,
      defaultsTo: true,
    )
    ..addOption(_portKey);

  final result = parser.parse(args);
  final env = result[_envKey];
  final printLogs = result[_printLogsKey];
  final portOrNull = result[_portKey];

  _configLogger(
    printLogs: printLogs,
  );

  await configInjector(env: env);

  final app = Router()
    ..mount(
      AuthController.path,
      _getIt.get<AuthController>().router,
    )
    ..mount(
      LobbyController.path,
      _getIt.get<LobbyController>().router.addAuthorization(),
    )
    ..mount(
      GameController.path,
      _getIt.get<GameController>().router.addAuthorization(),
    )
    ..mount(
      UserController.path,
      _getIt.get<UserController>().router.addAuthorization(),
    );

  final handler = Pipeline()
      .addMiddleware(
        logRequests(
          logger: (message, isError) =>
              isError ? _logger.shout(message) : _logger.info(message),
        ),
      )
      .addMiddleware(corsHeaders())
      .addHandler(app);

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(portOrNull ?? '$_defaultPort');
  final server = await serve(handler, ip, port);

  _logger.info('Server listening on port ${server.port}');
}

void _configLogger({required bool printLogs}) {
  if (printLogs) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      // ignore: avoid_print
      print(
        '[${record.time}] '
        '${record.level.name} | '
        '${record.loggerName}: '
        '${record.message}',
      );
    });
  }
}
