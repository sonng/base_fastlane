# Fastlane Project Setup

The intention of this documentation is to walkthrough the process of adding the base Fastlane scripts to a project, including how to configure it.

The idea is to have a simple base Fastlane script that does everything we need and a configuration file that contains the values needed per project.

## Copy `fastlane` folder into project
Copy the whole `fastlane` folder into the root project folder.

## Edit `config.json` inside `fastlane` directory
Below is what each symbol means and what kind of value is is expecting.

### Config Root
| Field | Description | Required |
| ----- | ----------- | -------- |
| git_url | ssh url in a format like `git@github.com:<repo>` | Yes |
| app_identifier | Default bundle ID | Yes |
| workspace | The name of the workspace file which contains everything we need to build | Yes |
| hockeyapp_id | The default API token for the particular HockeyApp build | Yes |
| configs | A dictionary of `config`. Please see below `Config Model` | Yes |

### Config Model
| Field | Description | Required |
| ----- | ----------- | -------- |
| build_type | The build type for this config, valid values are `adhoc` or `appStore` | Yes |
| config | The `Configuration` that you want to build the `Scheme` on. This is dependant on what's available in the project. | Yes |
| scheme | The `Scheme` you want to build | Yes |
| app_identifier | The bundle identifier for this config. If not specified, it will default to the one specified in the `Config Root` | No |
| hockeyapp_id | The HockeyApp API Token where the final build will be uploaded to. If not specified, it will default to the one specified in the `Config Root` | No |


## Matchfile Setup
We use Fastlane Match to manage our certificates and profiles. We will need to add some configuration in order to make it easier to grab the profiles/certificates after we've cloned.

1. Make sure `git_url` points to our certificates and profiles private git repository
2. Update `app_identifier` to contain all of the bundle ids used by the project
3. Update `git_branch` to the team name

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