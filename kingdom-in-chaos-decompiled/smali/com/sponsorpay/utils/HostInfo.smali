.class public Lcom/sponsorpay/utils/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"


# static fields
.field private static final ANDROID_OS_PREFIX:Ljava/lang/String; = "Android OS "

.field private static final CONNECTION_TYPE_CELLULAR:Ljava/lang/String; = "cellular"

.field private static final CONNECTION_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static final SCREEN_DENSITY_CATEGORY_VALUE_EXTRA_HIGH:Ljava/lang/String; = "EXTRA_HIGH"

.field private static final SCREEN_DENSITY_CATEGORY_VALUE_HIGH:Ljava/lang/String; = "HIGH"

.field private static final SCREEN_DENSITY_CATEGORY_VALUE_LOW:Ljava/lang/String; = "LOW"

.field private static final SCREEN_DENSITY_CATEGORY_VALUE_MEDIUM:Ljava/lang/String; = "MEDIUM"

.field private static final SCREEN_DENSITY_CATEGORY_VALUE_TV:Ljava/lang/String; = "TV"

.field private static final TAG:Ljava/lang/String; = "HostInfo"

.field private static final UNDEFINED_VALUE:Ljava/lang/String; = "undefined"

.field private static hostInfoInstance:Lcom/sponsorpay/utils/HostInfo;

.field protected static sSimulateNoAccessNetworkState:Z

.field protected static sSimulateNoReadPhoneStatePermission:Z


# instance fields
.field private mAdvertisingId:Ljava/lang/String;

.field private mAdvertisingIdLimitedTrackingEnabled:Z

.field private mAppVersion:Ljava/lang/String;

.field private mBundleName:Ljava/lang/String;

.field private mCarrierCountry:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/String;

.field private mConnectionType:Ljava/lang/String;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasDeviceReverseOrientation:Z

.field private mIdLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLanguageSetting:Ljava/lang/String;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mOsVersion:Ljava/lang/String;

.field private mPhoneVersion:Ljava/lang/String;

.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenDensityCategory:Ljava/lang/String;

.field private mScreenDensityX:F

.field private mScreenDensityY:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 430
    sput-boolean v0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoReadPhoneStatePermission:Z

    .line 431
    sput-boolean v0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoAccessNetworkState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/sponsorpay/utils/HostInfo;->mAdvertisingIdLimitedTrackingEnabled:Z

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/utils/HostInfo;->mHasDeviceReverseOrientation:Z

    .line 237
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mIdLatch:Ljava/util/concurrent/CountDownLatch;

    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A context is required to initialize HostInfo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 118
    new-instance v0, Lcom/sponsorpay/utils/HostInfo$1;

    const-string v1, "AdvertisingIdRetriever"

    invoke-direct {v0, p0, v1, p1}, Lcom/sponsorpay/utils/HostInfo$1;-><init>(Lcom/sponsorpay/utils/HostInfo;Ljava/lang/String;Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0}, Lcom/sponsorpay/utils/HostInfo$1;->start()V

    .line 127
    :goto_0
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/HostInfo;->retrieveTelephonyManagerValues(Landroid/content/Context;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/HostInfo;->retrieveAccessNetworkValues(Landroid/content/Context;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/HostInfo;->retrieveDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 130
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/HostInfo;->retrieveAppVersion(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/HostInfo;->retrieveReverseOrientation(Landroid/content/Context;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/HostInfo;->setupLocationManager(Landroid/content/Context;)V

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mLanguageSetting:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android OS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mOsVersion:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mPhoneVersion:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mBundleName:Ljava/lang/String;

    .line 144
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sponsorpay/utils/HostInfo;->retrieveAdvertisingId(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/sponsorpay/utils/HostInfo;->hostInfoInstance:Lcom/sponsorpay/utils/HostInfo;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/sponsorpay/utils/HostInfo;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/HostInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sponsorpay/utils/HostInfo;->hostInfoInstance:Lcom/sponsorpay/utils/HostInfo;

    .line 62
    :cond_0
    sget-object v0, Lcom/sponsorpay/utils/HostInfo;->hostInfoInstance:Lcom/sponsorpay/utils/HostInfo;

    return-object v0
.end method

.method private getScreenDensityCategoryFromModernAndroidDevice(I)Ljava/lang/String;
    .locals 11
    .param p1, "densityCategoryDpi"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 319
    new-array v5, v10, [Ljava/lang/String;

    const-string v7, "DENSITY_XHIGH"

    aput-object v7, v5, v8

    const-string v7, "DENSITY_TV"

    aput-object v7, v5, v9

    .line 320
    .local v5, "remainingScreenDensityCategoryStaticFieldNames":[Ljava/lang/String;
    new-array v0, v10, [Ljava/lang/String;

    const-string v7, "EXTRA_HIGH"

    aput-object v7, v0, v8

    const-string v7, "TV"

    aput-object v7, v0, v9

    .line 322
    .local v0, "correspondingScreenDensityCategoryStringValues":[Ljava/lang/String;
    array-length v7, v5

    .line 323
    array-length v8, v0

    .line 322
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 325
    .local v4, "iterationLimit":I
    const/4 v1, 0x0

    .line 327
    .local v1, "densityCategory":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_2

    .line 344
    :cond_0
    if-nez v1, :cond_1

    const-string v1, "undefined"

    .end local v1    # "densityCategory":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 329
    .restart local v1    # "densityCategory":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-class v7, Landroid/util/DisplayMetrics;

    .line 330
    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 331
    .local v2, "eachField":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 332
    .local v6, "thisFieldvalue":I
    if-ne p1, v6, :cond_3

    .line 333
    aget-object v1, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v2    # "eachField":Ljava/lang/reflect/Field;
    .end local v6    # "thisFieldvalue":I
    :cond_3
    :goto_1
    if-nez v1, :cond_0

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static isDeviceSupported()Z
    .locals 2

    .prologue
    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retrieveAccessNetworkValues(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const-string v3, ""

    iput-object v3, p0, Lcom/sponsorpay/utils/HostInfo;->mConnectionType:Ljava/lang/String;

    .line 156
    sget-boolean v3, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoAccessNetworkState:Z

    if-nez v3, :cond_0

    .line 159
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 161
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 162
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 164
    .local v2, "netType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v3, "wifi"

    :goto_0
    iput-object v3, p0, Lcom/sponsorpay/utils/HostInfo;->mConnectionType:Ljava/lang/String;

    .line 170
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "mConnectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "netType":I
    :cond_0
    :goto_1
    return-void

    .line 165
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "mConnectivity":Landroid/net/ConnectivityManager;
    .restart local v2    # "netType":I
    :cond_1
    const-string v3, "cellular"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "mConnectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "netType":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private retrieveAppVersion(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 203
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sponsorpay/utils/HostInfo;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    iput-object v2, p0, Lcom/sponsorpay/utils/HostInfo;->mAppVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private retrieveDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 192
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 191
    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mWindowManager:Landroid/view/WindowManager;

    .line 193
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method private retrieveReverseOrientation(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 148
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/sponsorpay/utils/HostInfo;->getRotation()I

    move-result v1

    .line 150
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_4

    .line 151
    :cond_1
    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    :cond_2
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_4

    :cond_3
    const/4 v2, 0x0

    .line 150
    :cond_4
    iput-boolean v2, p0, Lcom/sponsorpay/utils/HostInfo;->mHasDeviceReverseOrientation:Z

    .line 152
    return-void
.end method

.method private retrieveTelephonyManagerValues(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v1, ""

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mCarrierName:Ljava/lang/String;

    .line 175
    const-string v1, ""

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mCarrierCountry:Ljava/lang/String;

    .line 176
    sget-boolean v1, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoReadPhoneStatePermission:Z

    if-nez v1, :cond_0

    .line 179
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 181
    .local v0, "tManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mCarrierName:Ljava/lang/String;

    .line 182
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mCarrierCountry:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "tManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v0    # "tManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setSimulateNoAccessNetworkState(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 438
    sput-boolean p0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoAccessNetworkState:Z

    .line 439
    return-void
.end method

.method public static setSimulateNoReadPhoneStatePermission(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 434
    sput-boolean p0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoReadPhoneStatePermission:Z

    .line 435
    return-void
.end method

.method private setupLocationManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 414
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    const-string v1, "passive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 421
    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mLocationManager:Landroid/location/LocationManager;

    .line 425
    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mProviders:Ljava/util/List;

    .line 427
    :cond_2
    return-void
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mIdLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mAdvertisingId:Ljava/lang/String;

    return-object v0

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAppBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mCarrierCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mLanguageSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public getLocationProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mPhoneVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getScreenDensityCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityCategory:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 298
    .local v0, "densityCategoryDpi":I
    sparse-switch v0, :sswitch_data_0

    .line 312
    invoke-direct {p0, v0}, Lcom/sponsorpay/utils/HostInfo;->getScreenDensityCategoryFromModernAndroidDevice(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityCategory:Ljava/lang/String;

    .line 315
    .end local v0    # "densityCategoryDpi":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityCategory:Ljava/lang/String;

    return-object v1

    .line 300
    .restart local v0    # "densityCategoryDpi":I
    :sswitch_0
    const-string v1, "MEDIUM"

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityCategory:Ljava/lang/String;

    goto :goto_0

    .line 303
    :sswitch_1
    const-string v1, "HIGH"

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityCategory:Ljava/lang/String;

    goto :goto_0

    .line 306
    :sswitch_2
    const-string v1, "LOW"

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityCategory:Ljava/lang/String;

    goto :goto_0

    .line 309
    :sswitch_3
    const-string v1, "EXTRA_HIGH"

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityCategory:Ljava/lang/String;

    goto :goto_0

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public getScreenDensityX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    iget v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityX:F

    .line 369
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenDensityY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x0

    iget v1, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityY:F

    .line 376
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenDensityY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenHeight:I

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenHeight:I

    .line 362
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenOrientation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "portrait"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "landscape"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "portrait"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "landscape"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "portrait"

    aput-object v3, v1, v2

    .line 279
    .local v1, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sponsorpay/utils/HostInfo;->getRotation()I

    move-result v0

    .line 280
    .local v0, "rotation":I
    iget-boolean v2, p0, Lcom/sponsorpay/utils/HostInfo;->mHasDeviceReverseOrientation:Z

    if-eqz v2, :cond_0

    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 283
    :cond_0
    aget-object v2, v1, v0

    return-object v2
.end method

.method public getScreenWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenWidth:I

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenWidth:I

    .line 355
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->mScreenWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceRevserseOrientation()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/sponsorpay/utils/HostInfo;->mHasDeviceReverseOrientation:Z

    return v0
.end method

.method public isAdvertisingIdLimitedTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/sponsorpay/utils/HostInfo;->mAdvertisingIdLimitedTrackingEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected retrieveAdvertisingId(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    :try_start_0
    const-string v6, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 249
    .local v1, "advertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getAdvertisingIdInfo"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 250
    .local v3, "getAdInfoMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "adInfo":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getId"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 253
    .local v4, "getIdMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "isLimitAdTrackingEnabled"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 255
    .local v5, "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sponsorpay/utils/HostInfo;->mAdvertisingId:Ljava/lang/String;

    .line 256
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/sponsorpay/utils/HostInfo;->mAdvertisingIdLimitedTrackingEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "adInfo":Ljava/lang/Object;
    .end local v1    # "advertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getAdInfoMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v5    # "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v6, p0, Lcom/sponsorpay/utils/HostInfo;->mIdLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 262
    return-void

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "HostInfo"

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
