import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: clipPathFlutter()),
    );
  }

  Widget containerFlutter() {
    /**
     * El widget más importante en el desarrollo de flutter
     * Úsalo como widget principal para personalizar y establecer
     * restricciones para el widget secundario.
     * */
    return Container(
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 5),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.all(20),
      height: 200,
      width: 100,
    );
  }

  Widget textFlutter() {
    /**
     * Usa el widget TEXT para mostrar texto y personalizarlo.
     * Ten en cuenta que siempre se muestra una cadena de texto.
     * Así que para usar número, double etc, primero debes convertirlos
     * en String.
     * */
    return Text(
      'Text Flutter',
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          fontFamily: 'Arial',
          letterSpacing: 2,
          shadows: [
            Shadow(
              color: Colors.black,
              blurRadius: 5,
              offset: Offset(5, 5),
            ),
          ]),
      overflow: TextOverflow.clip,
      textAlign: TextAlign.center,
      maxLines: 1,
    );
  }

  Widget columnFlutter() {
    /**
     * Column es uno de los widgets más importantes en el universo Flutter.
     * El objetivo de un Column es contener otros wdigets, conocidos
     * como hijos.
     *
     * En un column, los hijos son organizados verticalmente desde el
     * primer hasta el ultimo.
     * */
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ],
    );
  }

  Widget rowFlutter() {
    /**
     * Row tambien es uno de los widgets más importantes en Flutter
     * El objetivo de un row es organizar Horizontalmente desde el
     * primero hasta el último.
     *
     * Así como Row y Column pueden tomar cualquier número de
     * elementos secundarios y organizarlos de acuerdo con las restricciones
     * definidas.
     * */
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }

  Widget sizedBoxFlutter() {
    /**
     * Este widget induce a su hijo a tener el mismo tamaño.
     * ¿Que pasa si les das un ancho finito?
     * ¿Crees que el alto tomará el tamaño finito?
     * Pues no, solo se exapnde hasta donde su padre se lo permita
     * Si pones un tamaño finito en ambas dimensiones width, height
     * el hijo va llenar todo el espacio disponible
     * Y ara esto hay un atajao muy simple y es usar SizedBox.expand()
     * Tambin SizedBox, es ideal para dar espacios entre widgets.
     * */
    return SizedBox(
      height: 80,
      width: 300,
      child: RaisedButton(
        onPressed: () {},
        textColor: Colors.white,
        color: Colors.red,
        padding: EdgeInsets.all(8.0),
        child: Text("BTN"),
      ),
    );
  }

  Widget expandedFlutter() {
    /**
     * Un widget expanded tiene que ser descendiente de un column, row, o flex,
     * de lo contrario tendrá un error.
     *
     * El uso de un widget expanded hace que un elemento secundario de un row,
     * colum o flex se expanda para llenar el espacio disponible a lo largo
     * del eje principal.
     * */
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.amberAccent,
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.all(10.0),
            color: Colors.blueAccent,
          ),
        )
      ],
    );
  }

  Widget safeAreaFlutter() {
    /**
     * SafeAre, se utiliza pra evitar que un widget interfiera con elementos
     * del sistema como la barra de estado, notch, la barra inferior del iphone,
     * etc
     * */
    return SafeArea(
      bottom: true,
      // por defecto
      left: true,
      // por defecto
      right: true,
      // por defecto
      top: true,
      // por defecto
      child: SizedBox.expand(
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }

  Widget scaffoldFlutter() {
    /**
     * El widget Scaffold es muy importante y lo usamos frecuentemente para dibujar
     * widgets de manera desing en la pantalla.
     * Anctual como el background, AppBar y BottomNavigationBar.
     * */
  }

  Widget appBarFlutter() {
    /**
     * AppBar generalmente se usan en la propiedadScaffold appBar, que coloca
     * como un widget de altura fija en la parte superior de la pantalla
     *
     * Cuando no se use como Scaffol.appBar, o cuando esté envuelto en un Hero,
     * coloque AppBar en un MediaQuer para cuidar el relleno alrededor del
     * contenido AppBar si es necesario, ya que Scaffold no manjará el relleno
     *
     * El AppBar muestra los widgets de la barra de herramientas, que lleva,
     * itulo y acciones,por encima de la parte inferior( si lo hay). La parte
     * inferior se usa generalmente para una TaBar.
     * */
  }

  Widget imageFlutter() {
    /**
     * Este widget es utilizado para mostrar una imagen en la pantalla.
     *
     * La imagen puede ser desde un enlace(url), imagen desde un archivo de su
     * proyecto local (asset) o tambien una imagen de la memoria.
     *
     * Si usas una imagen desde tu proyecto local, primero debe declarar la
     * carpetas de imágenes.
     *
     * Hay muchas formas que flutter puede mostrar una imagen.
     *
     * internet-> Image.network()
     * local -> Image.asset()
     * memoria -> Image.memory()
     * dispositivo -> Image.file()
     *
     * */
    return Image(
      height: 300,
      width: 300,
      fit: BoxFit.cover,
      image: NetworkImage(
          "https://scontent.flim10-1.fna.fbcdn.net/v/t1.0-9/71643807_2291313827866125_3859228226572255232_o.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_eui2=AeEFnTW0QtmZR53iANddtLFVc-__3hegRHVz7__eF6BEdcDBb44PSLxFepO_5ZyWEBpFtNffcwbsvDjYiitNbuWq&_nc_ohc=nz3-5ZaLQ5IAX-o_MZf&_nc_ht=scontent.flim10-1.fna&oh=a1052f02cbd849aa55e518c0a840d588&oe=5F591C6E"),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget iconFlutter() {
    /**
     * El widget icon se utiliza para mostrar iconos así literalmnete.
     *
     * Por defecto tenemos accesos a los iconos de material degoogle.
     *
     * Nota etos iconos no son tal interactivos, es decir no te da la posibilidad
     * de que el usuario pueda realizar una acción sobre ella.
     *
     * Nota
     * Que para usar esta clase, asegurese de establecerla [uses-material-desing:true]
     * en el [pubspec.yaml].
     *
     * Paquetes de icons interesantes para flutter en pub.dev
     * fluttericon
     * outline_material_icons
     * flutter_icons
     * */
    return Icon(
      Icons.add_a_photo,
      color: Colors.amber,
      size: 80,
    );
  }

  Widget iconButtonFlutter() {
    /**
     * El widget IconButton es similar a Icon pero con algunas diferencias
     * muy importantes.
     *
     * IconButton es interactivo es decir te la posiblidad de que el usuario
     * pueda realizar una acción sobre ella o en la pantalla.
     *
     * IconButton es muy usado como acciones en el widget[AppBar],
     * pero tambien puede usarse en otros lugares.
     * */
    return IconButton(
      icon: Icon(Icons.favorite),
      color: Colors.red,
      iconSize: 150,
      alignment: Alignment.center,
      onPressed: () {},
      padding: EdgeInsets.all(5),
      disabledColor: Colors.blue,
    );
  }

  Widget paddingFlutter() {
    /**
     * El widget Padding nos permite rellenar y colocar
     * restricciones a nuestro hijo secundario.
     *
     * Al colocar estas restricciones hace que el elemento secundario
     * tenga un tamaño más pequeño creando efectivamente un espacio
     * vacio alrededor del hijo.
     * */
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Container(
        width: 200,
        color: Colors.amber,
        height: 200,
      ),
    );
  }

  Widget textFieldFlutter() {
    /**
     * Un TextField permite al usuario ingresar texto, ya sea
     * con un teclado de hardware o con un teclado en pantalla.
     *
     * El TextField llama onChanged cada vez que el usuario cmania el texto.
     * Si el usuario indica que ha terminado de escribir
     * (Ej. presionando un botón en el teclado), el campo
     * de texto llama onSubmitteed.
     *
     * Para controlar el texto que se muestra en el TextField, use el controller.
     * Por ejemplo, para establecer un valor inicial
     * del campo de texto que ya conteng aun valor por defecto.
     *
     * Pra integrar TextField en un formulario con otros widgets
     * de [FormField], considera usar [TextFormField].
     * */
    final TextEditingController controller = TextEditingController();
    String valor;

    return TextField(
      style: TextStyle(color: Colors.blue),
      cursorColor: Colors.amber,
      controller: controller,
      obscureText: true,
      keyboardType: TextInputType.text,
      onChanged: (texto) {
        valor = texto;
        print(valor);
      },
      onSubmitted: (texto) {
        valor = texto;
        print(valor);
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline, color: Colors.amberAccent),
        labelText: 'Texto',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.green),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.green),
        ),
        hintStyle: TextStyle(color: Colors.green),
        labelStyle: TextStyle(color: Colors.green),
        filled: true,
        fillColor: Colors.green.withOpacity(0.3),
      ),
    );
  }

  Widget flatButtonFlutter() {
    /**
     * Flatbutton generalmente se usa para mostrar botones que conducen a
     * funcionalidades secundarias de la aplicaicón, como ver todos los arhcivos
     * de la galeria, abrir la camara, cmabiar los permisos, etc.
     *
     * Flatbutton no tiene una elevación a diferencia del widget [RaisedButton].
     * Además, de forma predeterminada, el botono no tiene color y el texto es negro.
     * Pero puede proporcionar color al texto y al boton usando textColor y color
     * respectivamente.
     *
     * Puede acceder a la función de devolución de llamada onPressed() cuando se presiona
     * Flatbutton.
     *
     * Tambien puede utilizar FlatButton.icon() para crear un botón de texto a partir de un
     * par de widgets que sirven como ícono y etiqueta del botón.
     * */
    return FlatButton(
      padding: EdgeInsets.all(30),
      color: Colors.orange,
      textColor: Colors.black,
      onPressed: () {
        print('Hola');
      },
      onLongPress: () {
        print('Mundo');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        'FlatButton',
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Widget raisedButtonFlutter() {
    /**
     * Es un concepto de diseño de Material Design de un botón con elevación
     * es decir que proporciona dimensionalidad a su interfaz de usuario a lo
     * largo del eje z con pistas de sombra etc.
     *
     * Puedes establecer muchas propiedades de RaisedButton como el color del
     * texto, el color del botón cuando está deshabilitado, el tiempo de animación,
     * de la forma, la elevación, el relleno, etc. Tambien puede deshabilitar el
     * botón usando la propiedad habilitada.
     *
     * Ten en cuenta que si las devoluciones de llamada onPressed y onLongPress
     * son nulas, el botón se desactivará y de forma predeterminada se parecerá
     * a un botón plano en el disabled color.
     * */
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: null,
          padding: EdgeInsets.all(15),
          disabledColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Text(
            'Disabled button',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          padding: EdgeInsets.all(15),
          disabledColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Text(
            'Enabled button',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }

  Widget circleAvatarFlutter() {
    /**
     * Un circulo que representa a un usuario como imagen o algún otro
     * significado en la aplicación.
     *
     * Normalmente se usa con la imagen de perfil de un usuario o en ausencia de una imagen,
     * las iniciales de su nombre. Las iniciales de un usuario dado siempre deben combinarse
     * con el mismo color de fondo, para amyor conssitencia.
     *
     * Si el avatar solo tiene las iniciales del usuario, generalmente
     * se proporcionan utilizando un widget de texto como telemento secundario y un color
     * de fondo.
     *
     * Puede revisar estos widgets alternos o combinarlos
     * Chip, para representar usuario o conceptos en forma más largas horizontalmente.
     * ListTitle, que puede combinar un icono (como CircleAvatar) con algo de texto para unalista
     * de altura fija.
     * */
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 70,
          backgroundColor: Colors.red,
          backgroundImage: NetworkImage(
              'https://scontent.flim10-1.fna.fbcdn.net/v/t1.0-9/71643807_2291313827866125_3859228226572255232_o.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_eui2=AeEFnTW0QtmZR53iANddtLFVc-__3hegRHVz7__eF6BEdcDBb44PSLxFepO_5ZyWEBpFtNffcwbsvDjYiitNbuWq&_nc_ohc=nz3-5ZaLQ5IAX-o_MZf&_nc_ht=scontent.flim10-1.fna&oh=a1052f02cbd849aa55e518c0a840d588&oe=5F591C6E'),
        ),
        CircleAvatar(
          radius: 70,
          backgroundColor: Colors.black,
          child: Text(
            'LY',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }

  Widget stackFlutter() {
    /**
     * El widget stack contiene una lista de widgets y los coloca uno encima del otro,
     * los renderiza y los ordena de abajo hacia arriba. Entonces, el primer elemento es el
     * más bajo y el utlimo s el más alto en la pantalla.
     *
     * El tamaño del slack es el tamaño del widget más grande. Entonces, si el
     * widget inferior cubre la pantalla completa, entonces el tamaño del stack ocupa toda la
     * pantalla compelta.
     *
     * Cada elemento secundario de un widget stack esta posicionado o no posicionado. Los
     * hijo posicionados son aquellos envueltos en un widget Positioned.
     *
     * Un widget posicionado funciona con una combinacion de parametros: vertical(
     * superior, inferior, altura= y horizontal(izquierda, derecha y ancho) pra colocar
     * los widgets dentro de stack.
     *
     * Las widgets no posicionados terminan en la pantalla según la propiedad de alineación
     * del widget Stack. Por defecto, la esquina superior izquieda de la pantalla.
     * */
    return Stack(
      fit: StackFit.loose,
      alignment: Alignment.bottomLeft,
      overflow: Overflow.clip,
      children: <Widget>[
        Container(
          width: 250,
          height: 250,
          color: Colors.deepOrange,
        ),
        Container(
          width: 12,
          height: 32,
          color: Colors.green,
        ),
      ],
    );
  }

  Widget listViewFlutter() {
    /**
     * ListView es una lista lineal deslizable de elementos. Podemos usarla para
     * hacer una lista de elementos despplazable o una lita de elementos repetidos.
     *
     * listView es el widget de desplazamiento más utilizado. Muestra a sus elementos
     * uno tras otro en la dirección de desplazamiento sea horizontal o verticalmente.
     *
     * Hay cuatro opciones para construir un ListView:
     * ListView.builder nos sirve para crear listas dinamicas.
     * ListView.separated construye elementos secundarios separados.
     * ListView.custom nos proporciona la capacidad de personalizar aspectos adiconales del
     * widget secundario.
     *
     * De forma predeterminada, ListView rellenará automaáticamente los extremos desplaables
     * de la lista, para evitarlo puedes usar la propiedad padding con balor 0.
     * */
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.red,
          child: Center(
            child: Text('Widget A'),
          ),
        ),
      ],
    );
  }

  Widget listTitleFlutter() {
    /**
     * listTitle generalmente se usa como elementos secundarios en un widget listView,
     * se pueden habilitar, deshabiliar, seleccionar y tambien pueden responder
     * a las acciones del usuario cortas o largas (touch)
     *
     * Aveces necesitamos que nuestras listas de elementos sigan unas especificaciones de diseño,
     * podriamos pasar horas resolviendo este diseño, con filas, contenedores, columnas, etc.
     *
     * Entonces ahí es donde entra la opción de usar ListTitle, donde solamente te dedicas a
     * colocar el contenido, indicando lo que va al inicio y al final de nuestro widget
     * ListTitle, y en medio iria nuestro texto de 2 lineas, como subtitlo y titulo y
     * logrando que sean interactivas con el usuario.
     * */

    return ListTile(
      leading: GestureDetector(
        child: Container(
          width: 48,
          height: 48,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://scontent.flim10-1.fna.fbcdn.net/v/t1.0-9/71643807_2291313827866125_3859228226572255232_o.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_eui2=AeEFnTW0QtmZR53iANddtLFVc-__3hegRHVz7__eF6BEdcDBb44PSLxFepO_5ZyWEBpFtNffcwbsvDjYiitNbuWq&_nc_ohc=nz3-5ZaLQ5IAX-o_MZf&_nc_ht=scontent.flim10-1.fna&oh=a1052f02cbd849aa55e518c0a840d588&oe=5F591C6E"),
          ),
        ),
      ),
      trailing: Icon(Icons.offline_pin, size: 40),
      contentPadding: EdgeInsets.all(10),
      isThreeLine: false,
      title: Text('Hola Mundo'),
      subtitle: Text('Luis Yauri'),
      dense: false,
      onTap: () {},
    );
  }

  Widget listViewBuilderFlutter() {
    /**
     * Listview.builder debemos usar en casos en que tenemos una gran
     * cantidad de elementos de lista porque,
     * a deifrencia de ListView este constructor, solo creamos los elementos
     * que serán visible en la pantalla. Cada vez que el usuario desplaza la lista,
     * crea el siguiente elemento visible.
     *
     * Proporcionar un valor no null en la propiedad itemCount mejora la capacidad máxima
     * de desplazamiento de todos sus elementos.
     *
     * ListView.Builder de forma predeterminada no admite la reordenacion de sus elementos secundarios.
     * Si deseas cambiar el ordén más adelante, considera usar ListView.custom.
     * */

    final List<String> list = [
      'Uno',
      'Dos',
      'Tres',
      'Cuatro',
      'Cinco',
      'Seis',
      'Siete',
      'Ocho'
    ];
    final List<int> colorCodes = <int>[
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      900,
    ];
    return ListView.builder(
      padding: EdgeInsets.all(100),
      itemCount: list.length,
      itemBuilder: (BuildContext context, index) {
        return Container(
          width: 100,
          height: 200,
          color: Colors.blue[colorCodes[index]],
          child: Center(
            child: Text(
              '${list[index]}',
              style: TextStyle(fontSize: 10),
            ),
          ),
        );
      },
    );
  }

  Widget bottomNavigationBarFlutter() {
    /**
     * Este widget es bastante usado y que se muestra en la parte inferior de una
     * aplicación para seleccionar entre un pequeño número de paginas, normalmente entre tres
     * y cinco páginas.
     *
     * Una barra de navegación generalmente se usa junto en un widget Scaffold, donde se proporciona como
     * el argumento [Scassfold.bottomNavigationBar]
     *
     * La barra de navegación consta de varios elementos en forma de etiquetas de textos, iconos o ambos.
     * Proporciona una navegación ráoida entre las vistas de nivel superior de nuestra aplicación.
     * Para pantallas más grandes, la navegación lateral puede ser una mejor opción.
     * */
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.deepOrange),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.deepOrange),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.deepOrange),
          ),
        ),
      ],
      currentIndex: 1,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white,
      onTap: null,
    );
  }

  Widget filterChipFlutter() {
    /**
     * Un widget filterchip usan etiquetas o palabras descriptivas como una forma
     * de flitrar contenido.
     *
     * Un widget filterchp son una buena alternativa a los widgets checkbox o switch.
     * A diferencia de estas alternativas, los chips de filtro permiten opciones
     * claramente en areas de nuestras aplicaciones que esta formado por elementos
     * muy juntos.
     *
     * Otros tipos de alternativas ActionChip, InputChip, y ChoiceChip.
     * */
    return Wrap(
      spacing: 5,
      children: <Widget>[
        FilterChip(
          padding: EdgeInsets.all(10),
          checkmarkColor: Colors.blueAccent,
          label: Text('Hola', style: TextStyle(fontSize: 12)),
          selectedColor: Colors.orange,
          backgroundColor: Colors.red,
          onSelected: (value) {
            print(value);
          },
        ),
      ],
    );
  }

  Widget floatingActionButtonFlutter() {
    /**
     * Es un botón de icono circular que se encuentra sobre nuestro conenido.
     * Los botones flotantes se usan más comúnmente en el campo Scaffold.floatinActionButton.
     *
     * FloatingActionButton tambien llamado FAB, represata la acción principal de nuestra
     * aplicación en la pantalla, para enfocar la atención del usuario. Por lo general,
     * se coloca en la parate inferior derecha de la pantalla.
     *
     * Te recomendamos máximo un solo botón flotante por pantalla. Los botonmes flotantes
     * deben usarse para acciones positivas como "crear","compartir" o "navegas".
     * (Si se usa más de un botón flotante, asegúrate de que cada botón tenga un HeroTag de un
     * id único, de lo contrario te saldrá una excepción).
     *
     * Si la propiedad onPressed es nula, el botón se desactivas y no reaccionará al tacto.
     * No se reocmienta deshabiltiar un botón flotante ya que no hay ninguna propiedad para transmitir
     * al usuario de que el botón esta deshabiltiado.
     * */

    String value = 'presiona el boton';

    return FloatingActionButton(
      onPressed: () {
        setState(() {
          value = 'Boton presionado';
        });
      },
      elevation: 6,
      child: Icon(Icons.add),
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white54,
    );
  }

  Widget dropdownButtonFlutter() {
    /**
     * Es un botón para seleccionar de una lsita del elementos
     * provenientes d datos dinámicos o estáticos.
     *
     * Un dropdownbutton le permite al usuario seleciconar entre varios elementos.
     *
     * El botón muestra el elemento actual seleccionado, asi como una felcha que
     * abre un menu para sleccionar otro elemento.
     *
     * El tipo <T> es el tipo del valor que representa cada elemento desplegable.
     * Por lo general, es un tipo de sus datos. Tales como String, double o una
     * clase de ejm: Tipo Persona cada DropdwonMenyItem en los elementos debe
     * estar especializado con el mismo argumento de tipo es decir Persona.
     * */

    List persona = ['Hola', 'Demo', 'Mundo'];

    String selectedPersona = 'Hola';
    return DropdownButton(
      isExpanded: true,
      value: selectedPersona,
      icon: Icon(Icons.arrow_downward, color: Colors.blue),
      iconSize: 24,
      hint: Text(
        'Selecciona un país',
        style: TextStyle(fontSize: 12),
      ),
      style: TextStyle(color: Colors.red, backgroundColor: Colors.orange),
      onChanged: (newValue) {
        setState(() {
          selectedPersona = newValue;
        });
      },
      items: persona.map((persona) {
        return DropdownMenuItem(
          value: persona,
          child: Text(persona),
        );
      }).toList(),
    );
  }

  Widget gestureDetectorFlutter() {
    /**
     * Es un widget donde podemos hacer que cualquier widget reaccione a nuestros
     * gestos, es decir tacto, toque etc.
     *
     * Si esta widget tiene un elemento como hijo, tendrá el comportamiento de sus
     * dimensiones. Si no tiene un hijo, crece para adaptarse al padre en su lugar.
     *
     * Por defecto, un GestureDetector con un hijo invisible ignora los toques;
     * Este comportamiento se puede controlar con la proviedad behavior de este widget.
     * */
    Color initColor = Colors.red;

    return GestureDetector(
      onTap: () {
        setState(() {
          initColor = Colors.orange;
          print('Tap');
        });
      },
      onDoubleTap: () {
        setState(() {
          initColor = Colors.green;
          print('Double');
        });
      },
      child: Icon(
        Icons.accessibility,
        size: 300,
        color: initColor,
      ),
    );
  }

  Widget placeholderFlutter() {
    /**
     * Un widget que dibuja un cuadro que representa donde se agregarán otros
     * widgters en algun momento.
     *
     * Este widget es util durante el desarrollo nos permite indicar que la
     * interfaz aunno esta completada. De forma predeterminada, este  widget se ajusta
     * sus dimenciones a su contenedor o padre principal.
     *
     * Si el widget está en un espacio ilimitado, se dimensionará según
     * los valores definidos en las propiedades fallbackwidth y fallbackheight.
     * */
    return Container(
      height: 300,
      child: Placeholder(
        color: Colors.indigo,
      ),
    );
  }

  Widget gridViewFlutter() {
    /**
     * Es un widget similar a una matriz 2D. Como su nombre lo undica, se
     * utiliza un widget GridView cuando tenemos que mostar algo en una cuadrícula.
     * Pdoemos mostar imágenes, texto, iconos, etc.
     *
     * Podemos implementar GridView de varias maneras:
     * GridView.count()
     * GridView.builder()
     * GridView.custom()
     * GridView.extent()
     *
     * GridView.count() es uno que se usa con frecuencia y se usa cuando ya
     * conocemos el tamaño de las cuadriculas. Siempre que tengamos que implementar
     * datos dinámicos, usamos GridView.builder().
     *
     * Ambos son como una matriz estática y una matriz dinámica.
     * */
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      reverse: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      children: List.generate(30, (index) {
        return Container(
          child: Card(
            elevation: 10,
            child: Center(
              child: Text(
                '$index',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget alignFlutter() {
    /**
     * Su funcion es alinear a su hijo dentro de si mismo y, opcionalmente, se
     * dimensiona en función de tamaño del hijo.
     *
     * Este widget será lo más grande posible si sus dimensiones están resitringidas y
     * sus propiedades [widthFactor] y [heightFactor] son nulos.
     *
     * Si el facto de tamaño no es nulo, la dimensión de este widget será de la
     * dimensión del niño multiplicado por factor de tamaño del widget Align.
     *
     * Por ejemplo, si [widthFactor] es 20.0 y el widget secundario [width] es 100,
     * entonces el ancho del widget Align siempre será 200 es decir el doble del ancho
     * de su hijo.
     * */
    return Center(
      child: Container(
        color: Colors.blue[200],
        child: Align(
          widthFactor: 1.7,
          heightFactor: 1.7,
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.orange,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }

  Widget layoutBuilderFlutter() {
    /**
     * LayoutBuilder es un widget que proporciona las dimensiones de su padre
     * para que podamas saber cuanto espacio tenemos para el widget y podemos
     * construirlo como nuestro hijo en consecuencia.
     *
     * Esto es útil cuando el padre restringe el tamaño del hijo y no depende del
     * tamaño instrinseco del hijo. El tamañao final del LayoutBuilder coincidirá
     * con el tamaño de sus hijo.
     *
     * El hijo debe ser más pequeño que el padre, considera envolverlo en un
     * widget Align. Si el niño necesita ser más grande considera envolverlo en
     * SingleChildScrollView
     * */
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 400) {
          return Container(
            color: Colors.red,
            child: Center(
              child: Text(
                '<400',
                style: TextStyle(fontSize: 10),
              ),
            ),
          );
        } else if (constraints.maxWidth < 200) {
          return Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                '<200',
                style: TextStyle(fontSize: 10),
              ),
            ),
          );
        } else {
          return Container(
            color: Colors.yellow,
            child: Center(
              child: Text(
                '<200',
                style: TextStyle(fontSize: 10),
              ),
            ),
          );
        }
      },
    );
  }

  Widget futureBuilder() {
    /**
     * Las tareas de ejecución prolonagadas son muy comunes en las aplicaciones
     * móviles. Un ejemplo típico es recuperar datos de un servidor remoto.
     * Una acción asincrónica puede tener éxtio o fallar y el código debe manejara
     * ambos casos.
     *
     * El future debe haber sido obtenido antes, por ejemplo, en el método
     * State.initState, State.didUpdateConfig o State.didChangeDependencies. No debe
     * crearse durante la llmada al metodo State.build o StatelessWidgetBuil al construir el
     * FutureBuilder. Si el future se crea al mismo tiempo que FutureBuilder, cada
     * vez que reconstruya el padre del FutureBuilder, la tarea asincrónica se reiniciará.
     * */
//    Future<List<User>> fetchUser() async {
//      final response = await http.get('url'),
//      List<User> users = new List();
//      final List decodedData = json.decode(response.body);
//      if(response.statusCode == 200) {
//        decodedData.forEach((user) {
//          final usertemporal = User.fromJson(user);
//          users.add(usertemporal);
//      });
//        return users;
//      } else {
//        throw Exception('Failed to load user');
//      }
//    }

    return null;
  }

  Widget wrapFlutter() {
    /**
     * Este widget es similar a los widgets Row o Column con la ventaja adicional
     * de que puedes ajustar sus elementos secundarios de acuerdo con el espacio
     * disponible en la pantalla.
     *
     * La disposción predetermianda es horizontal (como una fila), pero también
     * puede hacerla vertical (como una columna) cambiando su propiedad de direccion.
     * Puedes ajustar el espacio entre los elementos secundarios y el espacio entre
     * las lineas según tu necesidad.
     * */
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      spacing: 5.0,
      runSpacing: 5.0,
      children: <Widget>[
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaAAAAAF'),
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaFFaaaaaaaaaaaaaaaa'),
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaFaa'),
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaFaaaaaaaaaaaa'),
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaFaaaaaaaaaa'),
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaFaaaaaaaaaa'),
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaFaaaaaaaaaaa'),
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaFaaaaaaaaaaa'),
        Text('HolaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaFaaaaaaaaaaa'),
      ],
    );
  }

  Widget richTextFlutter() {
    /**
     * El widget richtext muesta textos que pueden usar multiples estilos diferentes.
     * El texto a mostrar son una lista de TextSpan, cada uno tiene un estilo asociado
     * que se usar para ese subarbol. El texto puede dividirse en varias lineas o todos
     * pueden mostrarse en la misma línea dependiendo de las restricciones de diseño.
     *
     * El texto que se muestra en un widget richtext debetener un estilo explicativo. Al
     * elegir qué estilo usar, considera usar DefaultTextStyle.ofBuildContext para
     * proporcionar valores predeterminados.
     *
     * Considere usar el widget Text para integrarse con DefaultTextStyle automáticamente.
     * */
    return RichText(
      text: TextSpan(
          text: 'Hola',
          style: TextStyle(color: Colors.blue, fontSize: 40),
          children: <TextSpan>[
            TextSpan(
              text: ' :) ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            TextSpan(
              text: ' Mundo!',
              style: TextStyle(color: Colors.green),
            ),
          ]),
    );
  }

  Widget fittedBoxFlutter() {
    /**
     * FittedBox es un widget utilizado para escalar y colocar a su hijo dentro
     * del contenedor del padre de acuerdo con el tipo de ajuste y la alineación
     * especificados, En este tutorial, les mostraremos como usar el widget,
     * incluido como configuralos tipos de ajuste y la alineación.
     * */
    return Container(
      width: 200,
      height: 200,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Container(
          child: Image.network(
              "https://scontent.flim10-1.fna.fbcdn.net/v/t1.0-9/71643807_2291313827866125_3859228226572255232_o.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_eui2=AeEFnTW0QtmZR53iANddtLFVc-__3hegRHVz7__eF6BEdcDBb44PSLxFepO_5ZyWEBpFtNffcwbsvDjYiitNbuWq&_nc_ohc=nz3-5ZaLQ5IAX-o_MZf&_nc_ht=scontent.flim10-1.fna&oh=a1052f02cbd849aa55e518c0a840d588&oe=5F591C6E"),
        ),
      ),
    );
  }

  Widget pageViewFlutter() {
    /**
     * PageView en flutter es en realidad una lista desplazable, pero más bien
     * funciona como una página.
     *
     * Si conoce los sliders o carruseles (más parecido a la visualización de
     * imágienes en una pantalla), PageView te otorga el mismo control y definir
     * en qe dirección deben desplazarse.
     *
     * Este widget es muy util que facilita la vida de un desarrollador. Hay muchas
     * propiedades y devoluciones de llamada que forman parte del widget PageView.
     * Sin embargo, PageView obliga al hijo a pegarse a la ventana gráfica como se específica.
     *
     * Hay 3 formas diferentes de cerar:
     * PageView.PageView(util para crear pageviews simples que son estáticas).
     *
     * PageView.Builder: útil para crear vistas de página dinámicas.
     *
     * PageView.Custom: útil para crear animaciones, acciones de desplazamiento
     * personalizadas.
     * */

    return PageView(
      reverse: true,
      pageSnapping: false,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      onPageChanged: (value) {
        print('Hola : $value');
      },
      children: <Widget>[
        Center(
          child: Text(
            'Pagina 1',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
        Center(
          child: Text(
            'Pagina 2',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 10,
            ),
          ),
        ),
        Center(
          child: Text(
            'Pagina 3',
            style: TextStyle(
              fontSize: 10,
              color: Colors.red,
              backgroundColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Widget clipPathFlutter() {
    /**
     * El wdiget ClipPath es otra parte del widget UIClipper.
     *
     * Cliptah se agregar clipreact y clipoval que define una ruta o lineas de trazo
     * específicos para recotar en la interfgaz.
     *
     * Esto se realiza a atravez de la clase customClipper que se define como
     * parte del atributo clipper.
     *
     * El dwidger clippath es un subconjunto de la clase customclipper y puede adoptar
     * cualquer forma y la interfaz de usuario se recorta en consencuencia.
     *
     * Al igual que los widgets cliprect y clipoval, esta
     * claro lo que harán estos respectivos widgets(un clip de la otra interfaz de
     * usuario en forma de rectangulo y el otro en forma ovalada). Sin embargo,
     * clippath necesita una ruta específica para ser definida.
     *
     * El uso principal de esta clase CustomClipper es definir que ruta debe
     * recortarse. Simplemente extienda o here la clase CustomClipper
     * y anule sus métodos getClip() y shouldReclip().
     * */
    return ClipPath(
//      clipper: CustomClipperPath(),
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: Colors.blue,
        width: 300,
        height: 300,
      ),
    );
  }

  Widget StreamBuilder() {
    /**
     * Cuando usas un SteamBuilder, escuchas los disitntos eventos o estados lanzados
     * por el stream. El streambuilder recibe ese evento y crea un widget.
     *
     * Stream, streamcontroller, son componentes báicos de streambuilder.
     *
     * StreamController le permite tener control sobre su stream, es decir, puede escuchar
     * una transmisión, agregar stream, puede pausar, detener su transmisión. Si hau
     * errores, streamcontroller le permite detecar esos errores y manejarlos a tu forma.
     * */

    return null;
  }
}
