.class public Lcom/tapjoy/TapjoyGpsHelper;
.super Ljava/lang/Object;
.source "TapjoyGpsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyGpsHelper"


# instance fields
.field private adTrackingEnabled:Z

.field private advertisingID:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceGpsVersion:I

.field private isAdIdAvailable:Z

.field private isGpsAvailable:Ljava/lang/Boolean;

.field private isGpsManifestConfigured:Ljava/lang/Boolean;

.field private packagedGpsVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->deviceGpsVersion:I

    .line 14
    iput v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->packagedGpsVersion:I

    .line 21
    iput-object p1, p0, Lcom/tapjoy/TapjoyGpsHelper;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public checkGooglePlayIntegration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyIntegrationException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Tapjoy SDK is disabled because Google Play Services was not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Failed to load manifest.xml meta-data, \'com.google.android.gms.version\' not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    return-void
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->advertisingID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceGooglePlayServicesVersion()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->deviceGpsVersion:I

    return v0
.end method

.method public getPackagedGooglePlayServicesVersion()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->packagedGpsVersion:I

    return v0
.end method

.method public isAdIdAvailable()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->isAdIdAvailable:Z

    return v0
.end method

.method public isAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->adTrackingEnabled:Z

    return v0
.end method

.method public isGooglePlayManifestConfigured()Z
    .locals 6

    .prologue
    .line 97
    iget-object v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsManifestConfigured:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyGpsHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 100
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 101
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "com.google.android.gms.version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->packagedGpsVersion:I

    .line 102
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsManifestConfigured:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsManifestConfigured:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsManifestConfigured:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isGooglePlayServicesAvailable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsAvailable:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    iget-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->deviceGpsVersion:I

    .line 79
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsAvailable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsAvailable:Ljava/lang/Boolean;

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "err":Ljava/lang/Error;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->isGpsAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public loadAdvertisingId()V
    .locals 4

    .prologue
    .line 28
    const-string v1, "TapjoyGpsHelper"

    const-string v2, "Looking for Google Play Services..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "TapjoyGpsHelper"

    const-string v2, "Google Play Services found, fetching advertisingID..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "TapjoyGpsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device\'s Google Play Services version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->deviceGpsVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "TapjoyGpsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Packaged Google Play Services version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->packagedGpsVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/tapjoy/TapjoyAdIdClient;

    iget-object v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyAdIdClient;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "adIdClient":Lcom/tapjoy/TapjoyAdIdClient;
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAdIdClient;->setupAdIdInfo()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->isAdIdAvailable:Z

    .line 39
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->isAdIdAvailable:Z

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAdIdClient;->isAdTrackingEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->adTrackingEnabled:Z

    .line 41
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAdIdClient;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->advertisingID:Ljava/lang/String;

    .line 43
    const-string v1, "TapjoyGpsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found advertising ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->advertisingID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "TapjoyGpsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is ad tracking enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->adTrackingEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v0    # "adIdClient":Lcom/tapjoy/TapjoyAdIdClient;
    :goto_0
    return-void

    .line 47
    .restart local v0    # "adIdClient":Lcom/tapjoy/TapjoyAdIdClient;
    :cond_0
    const-string v1, "TapjoyGpsHelper"

    const-string v2, "Error getting advertisingID from Google Play Services"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "adIdClient":Lcom/tapjoy/TapjoyAdIdClient;
    :cond_1
    const-string v1, "TapjoyGpsHelper"

    const-string v2, "Google Play Services not found"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
