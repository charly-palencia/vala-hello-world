/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2022 Chary Palencia <charly@guarapo.dev>
 */

public class Application : Gtk.Application {

  // Initializer
  public Application () {
    Object(
      application_id: "com.github.charly-palencia.example",
      flags: ApplicationFlags.HANDLES_OPEN
      );
  }

  protected override void activate () {
    var main_window = new Gtk.ApplicationWindow(this) {
      default_height = 300,
      default_width = 300,
      title = "Hello World"
    };

    var label = new Gtk.Label("Here's a label");

    //Add new item to the window
    // main_window.add(button_hello);
    main_window.add(label);

    main_window.show_all();
  }


  public static int main(string [] args) {
    return new Application().run(args);
  }
}
