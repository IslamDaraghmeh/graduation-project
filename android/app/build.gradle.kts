plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.skin_care_graduation_project"
    compileSdk = 35
    ndkVersion = "27.0.12077973" // حل مشكلة NDK mismatch

    defaultConfig {
        applicationId = "com.example.skin_care_graduation_project"
        minSdk = 21
        targetSdk = 35
        versionCode = 1
        versionName = "1.0"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
        isCoreLibraryDesugaringEnabled = true // حل مشكلة desugaring
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}
