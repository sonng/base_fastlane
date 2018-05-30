fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

## Choose your installation method:

<table width="100%" >
<tr>
<th width="33%"><a href="http://brew.sh">Homebrew</a></th>
<th width="33%">Installer Script</th>
<th width="33%">RubyGems</th>
</tr>
<tr>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS or Linux with Ruby 2.0.0 or above</td>
</tr>
<tr>
<td width="33%"><code>brew cask install fastlane</code></td>
<td width="33%"><a href="https://download.fastlane.tools">Download the zip file</a>. Then double click on the <code>install</code> script (or run it in a terminal window).</td>
<td width="33%"><code>sudo gem install fastlane -NV</code></td>
</tr>
</table>

# Available Actions
## iOS
### ios build
```
fastlane ios build
```
Build the application
### ios build_and_upload
```
fastlane ios build_and_upload
```

### ios build_internal
```
fastlane ios build_internal
```
Build the application
### ios check_and_load_config
```
fastlane ios check_and_load_config
```
Check parameters passed in
### ios set_version
```
fastlane ios set_version
```
Set the right version number
### ios certificates_and_profiles
```
fastlane ios certificates_and_profiles
```
Download certificates using match
### ios build_ipa
```
fastlane ios build_ipa
```
Build the App
### ios distribute_ipa
```
fastlane ios distribute_ipa
```
Distribution

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
