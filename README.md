# Fastlane Project Setup

The intention of this documentation is to walkthrough the process of adding the base Fastlane scripts to a project, including how to configure it.

The idea is to have a simple base Fastlane script that does everything we need and a configuration file that contains the values needed per project.

## Matchfile Changes
We use Fastlane Match to manage our certificates and profiles. We will need to add some configuration in order to make it easier to grab the profiles/certificates after we've cloned.



## Project Changes
For the simple base Fastlane script to work, we need to update a few things on the project file;

### General
Turn off `Automatically manage signing`

### Build Settings
Under `Build Settings` we need to update/change the following;

1. `Versioning System` to `Apple Generic`
2. Add a value for `Current Project Version`. It could be anything e.g `1.0.0`