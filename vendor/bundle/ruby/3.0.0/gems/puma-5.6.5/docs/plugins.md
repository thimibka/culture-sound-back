## Plugins

Puma 3.0 added support for plugins that can augment configuration and service
operations.

There are two canonical plugins to aid in the development of new plugins:

- [tmp_restart](https://github.com/puma/puma/blob/master/lib/puma/plugin/tmp_restart.rb):
  Restarts the server if the file `tmp/restart.txt` is touched
- [flyio](https://github.com/puma/puma-flyio/blob/master/lib/puma/plugin/flyio.rb):
  Packages up the default configuration used by Puma on flyio (being sunset
  with the release of Puma 5.0)

Plugins are activated in a Puma configuration file (such as `config/puma.rb'`)
by adding `plugin "name"`, such as `plugin "flyio"`.

Plugins are activated based on path requirements so, activating the `flyio`
plugin is much like `require "puma/plugin/flyio"`. This allows gems to provide
multiple plugins (as well as unrelated gems to provide Puma plugins).

The `tmp_restart` plugin comes with Puma, so it is always available.

To use the `flyio` plugin, add `puma-flyio` to your Gemfile or install it.

### API

## Server-wide hooks

Plugins can use a couple of hooks at the server level: `start` and `config`.

`start` runs when the server has started and allows the plugin to initiate other
functionality to augment Puma.

`config` runs when the server is being configured and receives a `Puma::DSL`
object that is useful for additional configuration.

Public methods in [`Puma::Plugin`](../lib/puma/plugin.rb) are treated as a
public API for plugins.
