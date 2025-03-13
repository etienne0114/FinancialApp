plugins {
    `kotlin-dsl`
}

repositories {
    mavenCentral()
    google()
    gradlePluginPortal()
}

dependencies {
    // Remove or replace the unresolved reference
    // implementation(libs.kotlin.gradle.plugin)
    implementation("org.jetbrains.kotlin:kotlin-gradle-plugin:1.8.22")
}
