-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2019 at 10:05 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idea`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 3, 'add_permission'),
(6, 'Can change permission', 3, 'change_permission'),
(7, 'Can delete permission', 3, 'delete_permission'),
(8, 'Can view permission', 3, 'view_permission'),
(9, 'Can add user', 2, 'add_user'),
(10, 'Can change user', 2, 'change_user'),
(11, 'Can delete user', 2, 'delete_user'),
(12, 'Can view user', 2, 'view_user'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add categorias', 12, 'add_categorias'),
(26, 'Can change categorias', 12, 'change_categorias'),
(27, 'Can delete categorias', 12, 'delete_categorias'),
(28, 'Can view categorias', 12, 'view_categorias'),
(29, 'Can add editores', 11, 'add_editores'),
(30, 'Can change editores', 11, 'change_editores'),
(31, 'Can delete editores', 11, 'delete_editores'),
(32, 'Can view editores', 11, 'view_editores'),
(33, 'Can add gestor documento', 8, 'add_gestordocumento'),
(34, 'Can change gestor documento', 8, 'change_gestordocumento'),
(35, 'Can delete gestor documento', 8, 'delete_gestordocumento'),
(36, 'Can view gestor documento', 8, 'view_gestordocumento'),
(37, 'Can add subtipos', 7, 'add_subtipos'),
(38, 'Can change subtipos', 7, 'change_subtipos'),
(39, 'Can delete subtipos', 7, 'delete_subtipos'),
(40, 'Can view subtipos', 7, 'view_subtipos'),
(41, 'Can add tipo', 10, 'add_tipo'),
(42, 'Can change tipo', 10, 'change_tipo'),
(43, 'Can delete tipo', 10, 'delete_tipo'),
(44, 'Can view tipo', 10, 'view_tipo'),
(45, 'Can add autores', 9, 'add_autores'),
(46, 'Can change autores', 9, 'change_autores'),
(47, 'Can delete autores', 9, 'delete_autores'),
(48, 'Can view autores', 9, 'view_autores'),
(49, 'Can add tipos', 13, 'add_tipos'),
(50, 'Can change tipos', 13, 'change_tipos'),
(51, 'Can delete tipos', 13, 'delete_tipos'),
(52, 'Can view tipos', 13, 'view_tipos');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$E2N2Iz9VuajW$JmVbUBhdyqmXsx5MXxLUxaX7opbT8rQUtrMteHoKU7I=', '2019-05-08 03:08:13.687712', 1, 'admin', '', '', 'concienciaenplenitud@gmail.com', 1, 1, '2019-02-06 21:45:02.851832');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `creada_en` datetime(6) NOT NULL,
  `actualizada_al` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `slug`, `descripcion`, `creada_en`, `actualizada_al`) VALUES
(1, 'Categoria1', 'cat1', 'esta es una categoria', '2019-02-08 21:08:29.289080', '2019-02-08 21:08:29.289363'),
(2, 'Categoria2', 'cat2', 'esta es la categoria 2', '2019-02-08 21:08:51.892758', '2019-02-08 21:08:51.892941'),
(3, 'categoria3', 'cat3', 'Esta es la categoria3', '2019-02-08 21:09:10.303229', '2019-02-08 21:09:10.303420');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-02-08 21:08:29.315134', '1', 'Categorias object (1)', 1, '[{\"added\": {}}]', 12, 1),
(2, '2019-02-08 21:08:51.896449', '2', 'Categorias object (2)', 1, '[{\"added\": {}}]', 12, 1),
(3, '2019-02-08 21:09:10.306148', '3', 'Categorias object (3)', 1, '[{\"added\": {}}]', 12, 1),
(4, '2019-02-08 21:09:44.128106', '1', 'Douglas Falcon', 1, '[{\"added\": {}}]', 11, 1),
(5, '2019-02-08 21:10:09.781991', '2', 'Beatriz Palencia', 1, '[{\"added\": {}}]', 11, 1),
(6, '2019-02-08 21:10:53.054722', '3', 'Karelis', 1, '[{\"added\": {}}]', 11, 1),
(7, '2019-02-08 21:11:18.762368', '4', 'Ananias', 1, '[{\"added\": {}}]', 11, 1),
(8, '2019-02-08 21:12:01.349755', '1', 'Betsy Palencia', 1, '[{\"added\": {}}]', 9, 1),
(9, '2019-02-08 21:12:51.807650', '2', 'Mariela Guevara', 1, '[{\"added\": {}}]', 9, 1),
(10, '2019-02-08 21:13:15.996980', '3', 'Janett Zerpa', 1, '[{\"added\": {}}]', 9, 1),
(11, '2019-02-08 21:13:38.385257', '4', 'Ynes Martines', 1, '[{\"added\": {}}]', 9, 1),
(12, '2019-02-08 21:15:15.207438', '5', 'lucia palencia', 1, '[{\"added\": {}}]', 9, 1),
(13, '2019-02-08 21:16:03.021141', '1', 'Tipos object (1)', 1, '[{\"added\": {}}]', 13, 1),
(14, '2019-02-08 21:16:26.317931', '2', 'Tipos object (2)', 1, '[{\"added\": {}}]', 13, 1),
(15, '2019-02-08 21:16:47.231830', '3', 'Tipos object (3)', 1, '[{\"added\": {}}]', 13, 1),
(16, '2019-02-08 21:17:48.492761', '1', 'Subtipos object (1)', 1, '[{\"added\": {}}]', 7, 1),
(17, '2019-02-08 21:18:44.955396', '2', 'Subtipos object (2)', 1, '[{\"added\": {}}]', 7, 1),
(18, '2019-02-08 21:19:11.149125', '3', 'Subtipos object (3)', 1, '[{\"added\": {}}]', 7, 1),
(19, '2019-02-08 21:19:34.759935', '4', 'Subtipos object (4)', 1, '[{\"added\": {}}]', 7, 1),
(20, '2019-02-08 21:20:06.322553', '5', 'Subtipos object (5)', 1, '[{\"added\": {}}]', 7, 1),
(21, '2019-02-08 21:24:41.738504', '1', 'GestorDocumento object (1)', 1, '[{\"added\": {}}]', 8, 1),
(22, '2019-02-08 21:27:15.394390', '2', 'GestorDocumento object (2)', 1, '[{\"added\": {}}]', 8, 1),
(23, '2019-02-08 21:28:38.090144', '3', 'GestorDocumento object (3)', 1, '[{\"added\": {}}]', 8, 1),
(24, '2019-02-08 21:29:44.061497', '4', 'GestorDocumento object (4)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(2, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'documento', 'autores'),
(12, 'documento', 'categorias'),
(11, 'documento', 'editores'),
(8, 'documento', 'gestordocumento'),
(7, 'documento', 'subtipos'),
(10, 'documento', 'tipo'),
(13, 'documento', 'tipos'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-02-06 21:38:49.003955'),
(2, 'auth', '0001_initial', '2019-02-06 21:38:58.239869'),
(3, 'admin', '0001_initial', '2019-02-06 21:39:00.463067'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-02-06 21:39:00.556023'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-02-06 21:39:00.674638'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-02-06 21:39:02.028950'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-02-06 21:39:02.965718'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-02-06 21:39:03.960781'),
(9, 'auth', '0004_alter_user_username_opts', '2019-02-06 21:39:04.062396'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-02-06 21:39:04.799263'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-02-06 21:39:04.854427'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-02-06 21:39:04.940472'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-02-06 21:39:06.092249'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-02-06 21:39:07.049146'),
(15, 'documento', '0001_initial', '2019-02-06 21:39:24.663924'),
(16, 'sessions', '0001_initial', '2019-02-06 21:39:26.105730'),
(17, 'documento', '0002_auto_20190209_1957', '2019-02-09 19:58:05.275913');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qezg7vqh7xbq6j6cww8l1i4l45oyf1lc', 'MjY3MWJiNWJkYTBmY2UyZTNlNjFjYmQ0NzE4NDAwNGVkNjA1ZjNkYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTkwYTg3ZTRiNGViYzA3NWE2ODBkNmYyM2VmNDU0OTgwNWJjN2YxNCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-05-22 03:08:13.780001'),
('sbfqjc4po9l4eof4pnyzku6ehfxv41nq', 'MjY3MWJiNWJkYTBmY2UyZTNlNjFjYmQ0NzE4NDAwNGVkNjA1ZjNkYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTkwYTg3ZTRiNGViYzA3NWE2ODBkNmYyM2VmNDU0OTgwNWJjN2YxNCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-02-20 21:45:35.161162'),
('t9pj7uum7kz54m53f7c4l6ie1jtnh35p', 'ZDliNjNmMzg2MGQxNDdjMTYxMTIzMjIzMDgyOWJhYjRjOTE2NTg3ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIxOTBhODdlNGI0ZWJjMDc1YTY4MGQ2ZjIzZWY0NTQ5ODA1YmM3ZjE0In0=', '2019-05-03 15:55:53.286380'),
('zb79tthg6j1fcy32kbxd0p71wy33o6rq', 'MjY3MWJiNWJkYTBmY2UyZTNlNjFjYmQ0NzE4NDAwNGVkNjA1ZjNkYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTkwYTg3ZTRiNGViYzA3NWE2ODBkNmYyM2VmNDU0OTgwNWJjN2YxNCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-05-05 21:31:24.870453');

-- --------------------------------------------------------

--
-- Table structure for table `documento_autores`
--

CREATE TABLE `documento_autores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documento_autores`
--

INSERT INTO `documento_autores` (`id`, `nombre`, `apellidos`, `email`) VALUES
(1, 'Betsy', 'Palencia', 'betsyninoska@hotmail.com'),
(2, 'Mariela', 'Guevara', 'mguevara@gmail.com'),
(3, 'Janett', 'Zerpa', 'jnatt@gmail.com'),
(4, 'Ynes', 'Martines', 'ymartines@gmail.com'),
(5, 'lucia', 'palencia', 'palencia@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `documento_editores`
--

CREATE TABLE `documento_editores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documento_editores`
--

INSERT INTO `documento_editores` (`id`, `nombre`, `domicilio`, `website`) VALUES
(1, 'Douglas Falcon', 'Guatire', 'http://douglasjfp@gmail.com'),
(2, 'Beatriz Palencia', 'Guatire el encantado', 'http://bjulieta@gmail.com'),
(3, 'Karelis', 'ni idea', 'http://karelisconk.com'),
(4, 'Ananias', 'Biblia', 'http://ananias.com');

-- --------------------------------------------------------

--
-- Table structure for table `documento_gestordocumento`
--

CREATE TABLE `documento_gestordocumento` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `publication_date` datetime(6) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ultimo_acceso` datetime(6) DEFAULT NULL,
  `id_editor_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documento_gestordocumento`
--

INSERT INTO `documento_gestordocumento` (`id`, `title`, `body`, `publication_date`, `fecha`, `foto`, `ultimo_acceso`, `id_editor_id`, `usuario_id`) VALUES
(1, 'EL ENCANTADO', 'Posibles temas\r\nReplicacion\r\ntecnologia que mantiene una copia de un comjunto de datos en un sistema remoto para bien sea tener alta disponibilidad de los datos o movimiento de datos para la reutilizacion a traves de varios aplicativos.\r\nEl aspecto clave de la replicacion es que los cambios en los datos se capturan en el maestro y luego se transfieren a los nodos de espera.En algunos casos un nodo en espera puede enviar cambios de datos a los Standby posteriores llamado este proceso retransmision.\r\nLos servidores de base de datos se conocen como nodos y todo el grupo de servidores implicados en la replicacion se conoce como cluster, el primer servidor de base de datos se conoce como maestro,  primario  o servidor de origenel segundo se conoce como Standby, esclavo o receptor\r\nExisten dos roles llamados maestro y suspendido para identificar cuando un nodo maestro esta activo o no.\r\nPara mover la funcion maestra a otro nodo se realiza un procedimiento llamado conmutacion.\r\nCuando el maestro muere y es imposible recuperarlo tenemos una conmutacion por fallas\r\n \r\n\r\nDespues que la transaccion se comita en el master es importante que la latencia o tardanza de la replicacion sea muy minima o nula\r\nRobustes operativa\r\nContiene una amplia gama de herramientas de replicacion', '2019-02-08 21:24:41.508713', '2019-02-01 21:24:13.000000', 'fotos/2018-09-10_06.13.57_Ol49ryi.jpg', '2019-02-01 21:24:38.000000', 1, 1),
(2, 'Pensamientos', 'Crea una plantilla base_SECTION.html para cada ‘‘sección’’ de tu sitio (por ej.\r\nbase_fotos.html y base_foro.html). Esas plantillas heredan de base.html e\r\nincluyen secciones específicas de estilo y diseño.\r\n3. Crea una plantilla individual para cada tipo de página, tales como páginas de\r\nformulario o galería de fotos. Estas plantillas heredan de la plantilla solo la\r\nsección apropiada.\r\nEsta aproximación maximiza la reutilización de código y hace más fácil agregar\r\nelementos para compartir distintas áreas, como puede ser un navegador de sección,\r\nun contenido o una cabecera.\r\nAquí hay algunos consejos para trabajar con la herencia de plantillas:\r\n Si usas etiquetas {% extends %} en la plantilla, esta debe ser la primera\r\netiqueta de esa plantilla. En otro caso, la herencia no funcionará.\r\n Generalmente, cuanto más etiquetas {% block %} tengas en tus plantillas,\r\nmejor. Recuerda, las plantillas hijas no tienen que definir todos los bloques\r\ndel padre, entonces puedes rellenar un número razonable de bloques por\r\nomisión, y luego definir sólo lo que necesiten las plantillas hijas. Es mejor\r\ntener más conexiones que menos.\r\n Si encuentras código duplicado en un número de plantillas, esto\r\nprobablemente signifique que debes mover ese código a un {% block %} en la\r\nplantilla padre.\r\n Si necesitas obtener el contenido de un bloque desde la plantilla padre, la\r\nvariable {{ block.super }} hará este truco. Esto es útil si quieres agregar\r\ncontenido del bloque padre en vez de sobreescribirlo completamente.\r\n No puedes definir múltiples etiquetas {% block %} con el mismo nombre en la\r\nmisma plantilla. Esta limitación existe porque una etiqueta bloque trabaja en\r\nambas direcciones. Esto es, una etiqueta bloque no sólo provee un agujero a\r\nllenar, sino que también define el contenido que llenará ese agujero en el\r\npadre . Si hay dos nombres similares de etiquetas {% block %} en una plantilla,\r\nel padre de esta plantilla puede no saber cuál de los bloques usar (aunque\r\nusara el primero que encuentre).\r\n El nombre de plantilla pasado a {% extends %} es cargado usando el mismo\r\nmétodo que get_template(). Esto es, el nombre de la plantilla es agregado a la\r\nvariable TEMPLATE_DIRS.\r\nEn la mayoría de los casos, el argumento para {% extends %} será un string o\r\ncadena, pero también puede ser una variable, si no sabes el nombre de la\r\nplantilla padre hasta la ejecución. Esto te permite hacer cosas divertidas y\r\ndinámicas.\r\n\r\n¿Qué sigue?\r\nLos sitios Web modernos, son manejados con una base de datos : el contenido de la\r\npágina Web está guardado en una base de datos relacional. Esto permite una clara\r\nseparación entre los datos y la lógica de los datos (de la misma forma en que las vistas\r\ny las plantillas permiten una separación de la lógica y la vista). Él próximo capítulo\r\ncubre las herramientas que Django brinda para interactuar con bases de datos.CAPÍTULO 5\r\nInteractuando con una base\r\nde datos: Modelos\r\nE\r\nl capítulo 3, cubrió los conceptos fundamentales sobre la construcción dinámica\r\nde sitios web con Django, así como la configuración de vistas y URLconfs. Como\r\nexplicamos, una vista es responsable de implementar alguna lógica arbitraria y luego\r\nretornar una respuesta. En el ejemplo, nuestra lógica arbitraria era calcular la fecha y\r\nla hora actual.\r\nEn las aplicaciones web modernas, la lógica arbitraria a menudo implica\r\ninteractuar con una base de datos. Detrás de escena, un sitio web impulsado por una\r\nbase de datos se conecta a un servidor de base de datos, recupera algunos datos de\r\neste, y los muestra con un formato agradable en una página web, del mismo modo el\r\nsitio puede proporcionar funcionalidad que permita a los visitantes del sitio ingresar\r\ndatos a la base de datos; por su propia cuenta.\r\nMuchos sitios web complejos proporcionan alguna combinación de las dos,\r\nAmazon.com por ejemplo, es un buen ejemplo de un sitio que maneja una base de\r\ndatos. Cada página de un producto es esencialmente una consulta a la base de datos\r\nde productos de Amazon formateada en HTML, y cuando envías una opinión de\r\ncliente (customer review), esta es insertada en la base de datos de opiniones.\r\nDjango es apropiado para crear sitios web que manejen una base de datos, ya que\r\nincluye una', '2019-02-08 21:27:15.224075', '2019-02-01 21:26:47.000000', 'fotos/LOGO_INVERSIONES_RA1845.jpg', '2019-02-01 21:27:12.000000', 1, 1),
(3, 'perdon', 'Por lo general get_context_data combina los datos del contexto de todas las\r\nclases padres con los de la clase actual. Para conservar este comportamiento en las\r\nclases donde se quiera alterar el comportamiento del contexto, asegúrate de llamar a\r\nget_context_data en la súper clase. Cuando ninguna de las dos clases trate de definir\r\nla misma clave, esto dará los resultados esperados. Sin embargo si cualquiera de las\r\nclases trata de sobrescribir la clave después de que la clase padre la ha fijado\r\n(después de llamar a súper) cualquiera de las clases hija necesitara explícitamente\r\nfijarla y asegurarse de sobrescribir todas las clases padres. Si tienes problemas, revisa\r\nel orden de resolución del método de una vista.\r\nVista para un subconjunto de objetos\r\nAhora echemos un vistazo más de cerca al argumento model que hemos venido\r\nusando hasta aquí. El argumento model especifica el modelo de la base de datos que\r\nusara la vista genérica, la mayoría de las vistas genéricas usan uno de estos\r\nargumentos para operar sobre un simple objeto o una colección de objetos. Sin\r\nembargo El argumento model no es la única forma de especificar los objetos que se\r\nmostraran en la vista, puedes especificar una lista de objetos usando como\r\nargumentos un queryset\r\nfrom django.views.generic import DetailView\r\nfrom biblioteca.models import Editor\r\nclass DetallesEditor(DetailView):\r\ncontext_object_name = \'editor\'\r\nqueryset = Editor.objects.all()\r\nEspecificando model = Editor es realmente un atajo para decir: queryset =\r\nEditor.objects.all(). Sin embargo, usando un queryset puedes filtrar una lista de\r\nobjetos y puedes especificar los objetos que quieres que se muestren en la vista.\r\nPara escoger un ejemplo simple, puede ser que quieras ordenar una lista de libros\r\npor fecha de publicación, con los libros más reciente al inicio:\r\nfrom django.views.generic import ListView\r\nfrom biblioteca.models import Libro\r\nclass LibrosRecientes(ListView):\r\nqueryset = Libro.objects.order_by(\'­fecha_publicacion\')\r\ncontext_object_name = \'libros_recientes\'', '2019-02-08 21:28:37.679014', '2019-02-15 21:28:00.000000', 'fotos/Captura_de_pantalla_de_2018-11-16_01-28-52.png', '2019-02-01 00:00:00.000000', 3, 1),
(4, 'cualquier cosa', 'U\r\nn esquema limpio y elegante en una URL, es un detalle importante en una\r\naplicación Web de alta calidad, Django te permite diseñar las URL que quieras, sin\r\nlimitaciones del framework, por lo que no encontraras requerimientos tipo .php o\r\n.cgi. El sistema de URLconf que usa Django estimula a generar URLs agradables,\r\n1\r\nhaciendo más sencillo el usarlas, que él no usarlas .\r\nEn él capítulo 3 , explicamos las bases sobre el funcionamiento de las funciones\r\nvista de Django y las URLconfs. En este capítulo conoceremos en detalle algunas\r\nfuncionalidades más avanzadas en estas dos partes del framework.\r\nTrucos de URLconf', '2019-02-08 21:29:43.885963', '2019-02-07 12:00:00.000000', 'fotos/Captura_de_pantalla_de_2018-11-16_01-29-56.png', '2019-02-06 21:29:42.000000', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documento_gestordocumento_id_autores`
--

CREATE TABLE `documento_gestordocumento_id_autores` (
  `id` int(11) NOT NULL,
  `gestordocumento_id` int(11) NOT NULL,
  `autores_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documento_gestordocumento_id_autores`
--

INSERT INTO `documento_gestordocumento_id_autores` (`id`, `gestordocumento_id`, `autores_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 5),
(4, 3, 1),
(5, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `documento_gestordocumento_id_categoria`
--

CREATE TABLE `documento_gestordocumento_id_categoria` (
  `id` int(11) NOT NULL,
  `gestordocumento_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documento_gestordocumento_id_categoria`
--

INSERT INTO `documento_gestordocumento_id_categoria` (`id`, `gestordocumento_id`, `categorias_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 1),
(4, 3, 2),
(5, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subtipos`
--

CREATE TABLE `subtipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `creada_en` datetime(6) NOT NULL,
  `actualizada_al` datetime(6) NOT NULL,
  `rastro` longtext NOT NULL,
  `id_subtipo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subtipos`
--

INSERT INTO `subtipos` (`id`, `nombre`, `slug`, `descripcion`, `creada_en`, `actualizada_al`, `rastro`, `id_subtipo_id`) VALUES
(1, 'tipo2sub1', 'tip2sub1', 'Este es tip2sub1', '2019-02-08 21:17:48.489728', '2019-02-08 21:17:48.489913', 'tip2sub1', 2),
(2, 'tipo 1sub2', 'tipo1sub2', 'Este es tipo 1sub2', '2019-02-08 21:18:44.951568', '2019-02-08 21:18:44.951745', 'tipo 1sub2', 1),
(3, 'tipo3sub1', 'tipo3sub1', 'tipo3sub1', '2019-02-08 21:19:11.146590', '2019-02-08 21:19:11.146777', 'tipo3sub1', 3),
(4, 'tipo3sub2', 'tipo3sub2', 'este es tipo3sub2', '2019-02-08 21:19:34.754029', '2019-02-08 21:19:34.754215', 'tipo3sub1', 3),
(5, 'tipo2sub1', 'tipo2sub1', 'eSTE ES tipo2sub1', '2019-02-08 21:20:06.319956', '2019-02-08 21:20:06.320154', 'tipo2sub1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `creada_en` datetime(6) NOT NULL,
  `actualizada_al` datetime(6) NOT NULL,
  `rastro` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `slug`, `descripcion`, `creada_en`, `actualizada_al`, `rastro`) VALUES
(1, 'Tipo1', 'tipo1', 'Este es un tipo', '2019-02-08 21:16:03.018607', '2019-02-08 21:16:03.018791', 'tipo'),
(2, 'Tipo2', 'tipo2', 'Tipo2', '2019-02-08 21:16:26.315061', '2019-02-08 21:16:26.315274', 'tipo2'),
(3, 'Tipo3', 'tipo3', 'tipo3', '2019-02-08 21:16:47.223189', '2019-02-08 21:16:47.223377', 'tipo3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `documento_autores`
--
ALTER TABLE `documento_autores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documento_editores`
--
ALTER TABLE `documento_editores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documento_gestordocumento`
--
ALTER TABLE `documento_gestordocumento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documento_gestordocu_id_editor_id_710046a4_fk_documento` (`id_editor_id`),
  ADD KEY `documento_gestordocumento_usuario_id_d51da253_fk_auth_user_id` (`usuario_id`);

--
-- Indexes for table `documento_gestordocumento_id_autores`
--
ALTER TABLE `documento_gestordocumento_id_autores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento_gestordocument_gestordocumento_id_autor_2492955c_uniq` (`gestordocumento_id`,`autores_id`),
  ADD KEY `documento_gestordocu_autores_id_0629ce43_fk_documento` (`autores_id`);

--
-- Indexes for table `documento_gestordocumento_id_categoria`
--
ALTER TABLE `documento_gestordocumento_id_categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento_gestordocument_gestordocumento_id_categ_aba15443_uniq` (`gestordocumento_id`,`categorias_id`),
  ADD KEY `documento_gestordocu_categorias_id_aede813c_fk_categoria` (`categorias_id`);

--
-- Indexes for table `subtipos`
--
ALTER TABLE `subtipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `subtipos_id_subtipo_id_78877cd0_fk_tipos_id` (`id_subtipo_id`);

--
-- Indexes for table `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `documento_autores`
--
ALTER TABLE `documento_autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `documento_editores`
--
ALTER TABLE `documento_editores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `documento_gestordocumento`
--
ALTER TABLE `documento_gestordocumento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `documento_gestordocumento_id_autores`
--
ALTER TABLE `documento_gestordocumento_id_autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `documento_gestordocumento_id_categoria`
--
ALTER TABLE `documento_gestordocumento_id_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subtipos`
--
ALTER TABLE `subtipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `documento_gestordocumento`
--
ALTER TABLE `documento_gestordocumento`
  ADD CONSTRAINT `documento_gestordocu_id_editor_id_710046a4_fk_documento` FOREIGN KEY (`id_editor_id`) REFERENCES `documento_editores` (`id`),
  ADD CONSTRAINT `documento_gestordocumento_usuario_id_d51da253_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `documento_gestordocumento_id_autores`
--
ALTER TABLE `documento_gestordocumento_id_autores`
  ADD CONSTRAINT `documento_gestordocu_autores_id_0629ce43_fk_documento` FOREIGN KEY (`autores_id`) REFERENCES `documento_autores` (`id`),
  ADD CONSTRAINT `documento_gestordocu_gestordocumento_id_9dc5d60e_fk_documento` FOREIGN KEY (`gestordocumento_id`) REFERENCES `documento_gestordocumento` (`id`);

--
-- Constraints for table `documento_gestordocumento_id_categoria`
--
ALTER TABLE `documento_gestordocumento_id_categoria`
  ADD CONSTRAINT `documento_gestordocu_categorias_id_aede813c_fk_categoria` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `documento_gestordocu_gestordocumento_id_a6250270_fk_documento` FOREIGN KEY (`gestordocumento_id`) REFERENCES `documento_gestordocumento` (`id`);

--
-- Constraints for table `subtipos`
--
ALTER TABLE `subtipos`
  ADD CONSTRAINT `subtipos_id_subtipo_id_78877cd0_fk_tipos_id` FOREIGN KEY (`id_subtipo_id`) REFERENCES `tipos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
