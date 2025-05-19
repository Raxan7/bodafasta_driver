allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
    
    // Enable buildConfig for all projects to fix Firebase plugin issues
    plugins.withId("com.android.library") {
        configure<com.android.build.gradle.LibraryExtension> {
            buildFeatures {
                buildConfig = true
            }
            
            // Fix for plugins that don't specify namespace
            if (project.plugins.hasPlugin("com.android.library")) {
                val extension = project.extensions.getByType(com.android.build.gradle.LibraryExtension::class.java)
                if (extension.namespace == null) {
                    // Try to get package name from manifest
                    val manifest = project.file("src/main/AndroidManifest.xml")
                    if (manifest.exists()) {
                        val manifestContent = manifest.readText()
                        val packageRegex = "package=\"([^\"]+)\"".toRegex()
                        val packageMatch = packageRegex.find(manifestContent)
                        packageMatch?.groupValues?.get(1)?.let { packageName ->
                            extension.namespace = packageName
                        } ?: run {
                            // Default namespace for connectivity_plus if we couldn't find it
                            if (project.name == "connectivity_plus") {
                                extension.namespace = "dev.fluttercommunity.plus.connectivity"
                            }
                        }
                    } else if (project.name == "connectivity_plus") {
                        extension.namespace = "dev.fluttercommunity.plus.connectivity"
                    }
                }
            }
            
            // Set Java compatibility to 11 for all Android libraries
            compileOptions {
                sourceCompatibility = JavaVersion.VERSION_11
                targetCompatibility = JavaVersion.VERSION_11
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
