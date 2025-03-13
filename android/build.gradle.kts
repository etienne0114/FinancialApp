buildscript {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
        // Add fallback repositories
        jcenter()
        maven { url = uri("https://maven.aliyun.com/repository/public") }
    }
    dependencies {
        classpath("com.android.tools.build:gradle:8.0.0")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.8.22") // Match version in settings.gradle.kts
        classpath("com.google.gms:google-services:4.3.15")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
        // Add fallback repositories
        jcenter()
        maven { url = uri("https://maven.aliyun.com/repository/public") }
    }
}