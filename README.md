# Fastlane Project Setup

The intention of this documentation is to walkthrough the process of adding the base Fastlane scripts to a project, including how to configure it.

The idea is to have a simple base Fastlane script that does everything we need and a configuration file that contains the values needed per project.

## Matchfile Setup
We use Fastlane Match to manage our certificates and profiles. We will need to add some configuration in order to make it easier to grab the profiles/certificates after we've cloned.

1. Make sure `git_url` points to our certificates and profiles private git repository
2. Update `app_identifier` to contain all of the bundle ids used by the project

Once the above has changed, run the below and follow the prompts. This will generate all of the profiles and certificates (if one isn't present) and commit it to the `git_url`

`bundle exec fastlane match appstore`

`bundle exec fastlane match adhoc`

`bundle exec fastlane match development`

## Project Changes
For the simple base Fastlane script to work, we need to update a few things on the project file;

### General
1. Turn off `Automatically manage signing`
2. For each configuration, select the provisioning profile applicable to that config.

### Build Settings
Under `Build Settings` we need to update/change the following;

1. `Versioning System` to `Apple Generic`
2. Add a value for `Current Project Version`. It could be anything e.g `1.0.0`