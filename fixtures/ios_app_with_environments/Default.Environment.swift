import ProjectDescription

let targetSettings = Settings(base: [
                                "CONFIG_SOURCE": "Framework2.Project.Base",
                                "FRAMEWORK2_BASE": "YES",
                              ],
                              configurations: [
                                .debug(settings: [ "OVERRIDEABLE_CONFIG": "Framework2.Debug.Base" ], xcconfig: "${ENVIRONMENT_DIR}/configs/debug.xcconfig"),
                                .release(settings: [ "OVERRIDEABLE_CONFIG": "Framework2.Release.Base" ], xcconfig: "${ENVIRONMENT_DIR}/configs/release.xcconfig"),
                                .release(name: "Beta", settings: [ "OVERRIDEABLE_CONFIG": "Framework2.Beta.Base" ], xcconfig: "${ENVIRONMENT_DIR}/configs/beta.xcconfig"),
                                .debug(name: "Testing", settings: [ "OVERRIDEABLE_CONFIG": "Framework2.Testing.Base" ]),
                                ])

let enviornment = Environment(
    settings: ["default": targetSettings]
)
