# flutter-reload.vim

Reload flutter when saving a dart file without using `--pid-file` option.

## Installation

### Via Plugin Manager (Recommended)

#### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'hankchiutw/flutter-reload.vim'` to your vimrc file.
2. Reload your vimrc or restart
3. Run `:PlugInstall`

#### [Vundle](https://github.com/VundleVim/Vundle.vim) or similar

1. Add `Plugin 'hankchiutw/flutter-reload.vim'` to your vimrc file.
2. Reload your vimrc or restart
3. Run `:BundleInstall`

#### [NeoBundle](https://github.com/Shougo/neobundle.vim)

1. Add `NeoBundle 'hankchiutw/flutter-reload.vim'` to your vimrc file.
2. Reload your vimrc or restart
3. Run `:NeoUpdate`

#### [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
cd ~/.vim/bundle
git clone https://github.com/hankchiutw/flutter-reload.vim.git
```

### Manual Installation

#### Unix

(For Neovim, change `~/.vim/` to `~/.config/nvim/`.)

```sh
curl -fLo ~/.vim/plugin/reload.vim --create-dirs \
  https://raw.githubusercontent.com/hankchiutw/flutter-reload.vim/master/plugin/reload.vim
curl -fLo ~/.vim/ftplugin/dart.vim --create-dirs \
  https://raw.githubusercontent.com/hankchiutw/flutter-reload.vim/master/ftplugin/dart.vim
```

#### Windows (PowerShell)

```powershell
md ~\vimfiles\plugin
md ~\vimfiles\doc
$pluguri = 'https://raw.githubusercontent.com/hankchiutw/flutter-reload.vim/master/plugin/reload.vim'
$ftpluguri = 'https://raw.githubusercontent.com/hankchiutw/flutter-reload.vim/master/ftplugin/dart.vim'
(New-Object Net.WebClient).DownloadFile($pluguri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\vimfiles\plugin\reload.vim"))
(New-Object Net.WebClient).DownloadFile($ftpluguri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\vimfiles\ftplugin\dart.vim"))
```

## Usage

In your flutter project, you will exectue `flutter run` (or `flutter run -d {DEVICE_NAME}` to specify the device you want).

**NO NEED to use `--pid-file` to specify a pid file.**

Make some changes to your project's *.dart files and you will see flutter reload automatically.

### How it works

Simply sending `SIGUSR1` to the flutter process in vim's `BufWritePost`.

(inspired from [reisub0/hot-reload.vim](https://github.com/reisub0/hot-reload.vim))
