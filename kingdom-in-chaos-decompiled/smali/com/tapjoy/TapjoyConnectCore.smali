.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "TapjoyConnectCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnectCore$PPAThread;,
        Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;
    }
.end annotation


# static fields
.field private static final DOCUMENTATION_URL:Ljava/lang/String; = "http://tech.tapjoy.com"

.field public static final MAX_NUMBER_OF_OFFLINE_LOGS:I = 0x32

.field private static final TAG:Ljava/lang/String; = "TapjoyConnect"

.field protected static adIdCheckDisabled:Ljava/lang/String;

.field protected static adTrackingEnabled:Z

.field protected static advertisingID:Ljava/lang/String;

.field private static androidID:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static bridgeVersion:Ljava/lang/String;

.field private static carrierCountryCode:Ljava/lang/String;

.field private static carrierName:Ljava/lang/String;

.field private static connectFlags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

.field private static connectionSubType:Ljava/lang/String;

.field private static connectionType:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static currencyMultiplier:F

.field private static dependencyClassesRequired:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static deviceCountryCode:Ljava/lang/String;

.field protected static deviceGooglePlayServicesVersion:I

.field private static deviceID:Ljava/lang/String;

.field private static deviceLanguage:Ljava/lang/String;

.field private static deviceLocation:Z

.field private static deviceManufacturer:Ljava/lang/String;

.field private static deviceModel:Ljava/lang/String;

.field private static deviceOSVersion:Ljava/lang/String;

.field private static deviceScreenDensity:I

.field private static deviceScreenDensityScale:F

.field private static deviceScreenLayoutSize:I

.field private static deviceType:Ljava/lang/String;

.field private static installID:Ljava/lang/String;

.field private static isViewShowing:Z

.field private static lastTimeStamp:J

.field private static libraryVersion:Ljava/lang/String;

.field private static macAddress:Ljava/lang/String;

.field private static matchingPackageNames:Ljava/lang/String;

.field private static mobileCountryCode:Ljava/lang/String;

.field private static mobileNetworkCode:Ljava/lang/String;

.field private static packageManager:Landroid/content/pm/PackageManager;

.field protected static packagedGoogleServicesVersion:I

.field private static paidAppActionID:Ljava/lang/String;

.field protected static persistentIdsDisabled:Ljava/lang/String;

.field private static platformName:Ljava/lang/String;

.field private static plugin:Ljava/lang/String;

.field private static redirectDomain:Ljava/lang/String;

.field private static sdkType:Ljava/lang/String;

.field private static secretKey:Ljava/lang/String;

.field private static segmentationParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sessionID:Ljava/lang/String;

.field private static sha2DeviceID:Ljava/lang/String;

.field private static shareFacebook:Z

.field private static shareGooglePlus:Z

.field private static shareLinkedIn:Z

.field private static shareTwitter:Z

.field private static storeName:Ljava/lang/String;

.field private static storeView:Z

.field private static tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

.field private static threatmetrixSessionID:Ljava/lang/String;

.field private static userID:Ljava/lang/String;

.field private static viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;


# instance fields
.field private appPaused:Z

.field private elapsed_time:J

.field private gpsHelper:Lcom/tapjoy/TapjoyGpsHelper;

.field private initialized:Z

.field private profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    .line 57
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 58
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 59
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    .line 60
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    .line 63
    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lcom/tapjoy/TapjoyConstants;->dependencyClassNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->installID:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    .line 79
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    .line 82
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->bridgeVersion:Ljava/lang/String;

    .line 83
    sput v5, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:I

    .line 84
    sput v4, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensityScale:F

    .line 85
    sput v5, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:I

    .line 86
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 87
    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->deviceLocation:Z

    .line 89
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    .line 94
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectionSubType:Ljava/lang/String;

    .line 96
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    .line 98
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    .line 100
    const-string v0, "native"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    .line 101
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    .line 103
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->redirectDomain:Ljava/lang/String;

    .line 105
    sput v4, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    .line 107
    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareFacebook:Z

    .line 108
    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareTwitter:Z

    .line 110
    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareGooglePlus:Z

    .line 111
    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareLinkedIn:Z

    .line 113
    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->storeView:Z

    .line 121
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    .line 126
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tapjoy/TapjoyConnectCore;->lastTimeStamp:J

    .line 135
    sput v2, Lcom/tapjoy/TapjoyConnectCore;->packagedGoogleServicesVersion:I

    .line 136
    sput v2, Lcom/tapjoy/TapjoyConnectCore;->deviceGooglePlayServicesVersion:I

    .line 138
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->advertisingID:Ljava/lang/String;

    .line 140
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->adIdCheckDisabled:Ljava/lang/String;

    .line 141
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->persistentIdsDisabled:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/tapjoy/TapjoyConnectFlag;->CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 144
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 146
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->segmentationParams:Ljava/util/Hashtable;

    .line 148
    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->isViewShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    .line 125
    iput-boolean v3, p0, Lcom/tapjoy/TapjoyConnectCore;->appPaused:Z

    .line 127
    iput-boolean v3, p0, Lcom/tapjoy/TapjoyConnectCore;->initialized:Z

    .line 212
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    .line 213
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 214
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    .line 215
    new-instance v1, Lcom/tapjoy/TapjoyGpsHelper;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyGpsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/TapjoyConnectCore;->gpsHelper:Lcom/tapjoy/TapjoyGpsHelper;

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->init()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/TapjoyConnectCore;->initialized:Z
    :try_end_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Lcom/tapjoy/TapjoyIntegrationException;
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntegrationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    if-eqz v1, :cond_0

    .line 231
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    invoke-interface {v1}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Lcom/tapjoy/TapjoyIntegrationException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Lcom/tapjoy/TapjoyException;
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TapjoyException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    if-eqz v1, :cond_0

    .line 237
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    invoke-interface {v1}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tapjoy/TapjoyConnectCore;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->handlePayPerActionResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 51
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->threatmetrixSessionID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->gpsHelper:Lcom/tapjoy/TapjoyGpsHelper;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->arePersistentIdsDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TapjoyConnectCore;)J
    .locals 2
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    return-wide v0
.end method

.method static synthetic access$414(Lcom/tapjoy/TapjoyConnectCore;J)J
    .locals 2
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnectCore;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    return-wide v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addConnectFlag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1989
    const-string v0, "TJC_SERVICE_URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TJC_EVENT_SERVICE_URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1991
    :cond_1
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    return-void
.end method

.method private static arePersistentIdsDisabled()Z
    .locals 2

    .prologue
    .line 1149
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isAdvertisingIdPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "disable_persistent_ids"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "disable_persistent_ids"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForDependency(Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyIntegrationException;
        }
    .end annotation

    .prologue
    .line 1159
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1161
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1164
    .local v1, "index":I
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1166
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1169
    .local v2, "missingConfigChanges":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget v3, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-eq v3, v4, :cond_0

    .line 1170
    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_0
    iget v3, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 1174
    const-string v3, "keyboardHidden"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1176
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1177
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1178
    new-instance v4, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " property is not specified in manifest configChanges for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    .end local v2    # "missingConfigChanges":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ClassNotFoundException] Could not find dependency class "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1180
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "missingConfigChanges":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    new-instance v4, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " properties are not specified in manifest configChanges for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1184
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_4

    iget v3, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-eq v3, v4, :cond_4

    .line 1185
    const-string v4, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING -- screenSize property is not specified in manifest configChanges for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_5

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.tapjoy.TJAdUnitView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-eq v3, v4, :cond_5

    .line 1189
    new-instance v4, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'hardwareAccelerated\' property not specified in manifest for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1191
    :cond_5
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1198
    .end local v1    # "index":I
    .end local v2    # "missingConfigChanges":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private checkManifestForConfigurations()V
    .locals 10

    .prologue
    .line 926
    :try_start_0
    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz v7, :cond_2

    .line 928
    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 931
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    .line 933
    sget-object v1, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v1, v3

    .line 935
    .local v4, "key":Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tapjoy."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 938
    const-string v7, "TapjoyConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found manifest flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-direct {p0, v4, v6}, Lcom/tapjoy/TapjoyConnectCore;->addConnectFlag(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    const-string v7, "TapjoyConnect"

    const-string v8, "Metadata successfully loaded"

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    :goto_1
    return-void

    .line 946
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    const-string v7, "TapjoyConnect"

    const-string v8, "No metadata present."

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 950
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 952
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "TapjoyConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading manifest meta-data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkPermissions()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyIntegrationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1051
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1052
    .local v3, "missingPermissions":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    sget-object v0, Lcom/tapjoy/TapjoyConstants;->dependencyPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1054
    .local v4, "permission":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/tapjoy/TapjoyConnectCore;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1056
    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1060
    .end local v4    # "permission":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1062
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1063
    new-instance v5, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing 1 permission in manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1065
    :cond_2
    new-instance v5, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " permissions in manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1069
    :cond_3
    new-instance v3, Ljava/util/Vector;

    .end local v3    # "missingPermissions":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1070
    .restart local v3    # "missingPermissions":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    sget-object v0, Lcom/tapjoy/TapjoyConstants;->optionalPermissions:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    .line 1072
    .restart local v4    # "permission":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/tapjoy/TapjoyConnectCore;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1074
    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1078
    .end local v4    # "permission":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1080
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v5, v6, :cond_7

    .line 1081
    const-string v5, "TapjoyConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " permission was not found in manifest. The exclusion of this permission could cause problems."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_6
    :goto_2
    return-void

    .line 1083
    :cond_7
    const-string v5, "TapjoyConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " permissions were not found in manifest. The exclusion of these permissions could cause problems."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkResourceFileForConfigurations()V
    .locals 6

    .prologue
    .line 961
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 966
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v3, "raw/tapjoy_config"

    const/4 v4, 0x0

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 967
    .local v1, "resId":I
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 970
    .local v0, "properties":Ljava/util/Properties;
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 971
    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->parsePropertiesIntoConfigFlags(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :goto_0
    return-void

    .line 972
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private determineInstallID()V
    .locals 6

    .prologue
    .line 821
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "tjcPrefrences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 822
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v3, "tapjoyInstallId"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->installID:Ljava/lang/String;

    .line 824
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->installID:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->installID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 829
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->installID:Ljava/lang/String;

    .line 831
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 832
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "tapjoyInstallId"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->installID:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 833
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error generating install id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static generateSessionID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1706
    const/4 v1, 0x0

    .line 1708
    .local v1, "id":Ljava/lang/String;
    const-string v2, "TapjoyConnect"

    const-string v3, "generating sessionID..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->lastTimeStamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    :goto_0
    return-object v1

    .line 1715
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to generate session id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2296
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1375
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAwardPointsVerifier(JILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J
    .param p2, "amount"    # I
    .param p3, "guid"    # Ljava/lang/String;

    .prologue
    .line 1804
    const-string v1, ""

    .line 1810
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVerifierID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1817
    :goto_0
    return-object v1

    .line 1812
    :catch_0
    move-exception v0

    .line 1814
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAwardPointsVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1443
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public static getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2264
    const-string v0, ""

    .line 2266
    .local v0, "flag":Ljava/lang/String;
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2268
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2271
    :cond_0
    return-object v0
.end method

.method public static getConnectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1420
    const-string v0, "https://connect.tapjoy.com/"

    return-object v0
.end method

.method public static getConnectionSubType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1521
    const-string v2, ""

    .line 1527
    .local v2, "subType":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1530
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1532
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 1533
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connection_sub_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1541
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-object v2

    .line 1536
    :catch_0
    move-exception v1

    .line 1538
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectionSubType error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1480
    const-string v2, ""

    .line 1486
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1489
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1491
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1498
    const-string v2, "mobile"

    .line 1502
    :goto_0
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connection_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_1
    return-object v2

    .line 1495
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :sswitch_0
    const-string v2, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    goto :goto_0

    .line 1506
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 1508
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectionType error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1491
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1729
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1384
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceScreenDensityScale()F
    .locals 1

    .prologue
    .line 2337
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensityScale:F

    return v0
.end method

.method public static getEventURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1411
    const-string v0, "TJC_EVENT_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericURLParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getParamsWithoutAppID()Ljava/util/Map;

    move-result-object v0

    .line 374
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_id"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    return-object v0
.end method

.method public static getHostURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1402
    const-string v0, "TJC_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2327
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getOfflineLogs()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 2033
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v2, "tapjoyOfflineLog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2034
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static getPackageNamesVerifier(JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J
    .param p2, "packageNames"    # Ljava/lang/String;

    .prologue
    .line 1829
    const-string v1, ""

    .line 1835
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVerifierID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1842
    :goto_0
    return-object v1

    .line 1837
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getParamsWithoutAppID()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 386
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isAdvertisingIdPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    const-string v4, "advertising_id"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->advertisingID:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 391
    const-string v4, "ad_tracking_enabled"

    sget-boolean v5, Lcom/tapjoy/TapjoyConnectCore;->adTrackingEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 395
    :cond_0
    const-string v4, "ad_id_check_disabled"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->adIdCheckDisabled:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 398
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->arePersistentIdsDisabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 400
    const-string v4, "android_id"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 401
    const-string v4, "udid"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 402
    const-string v4, "mac_address"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 406
    :cond_1
    const-string v4, "persistent_ids_disabled"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->persistentIdsDisabled:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 408
    sget v4, Lcom/tapjoy/TapjoyConnectCore;->packagedGoogleServicesVersion:I

    if-eqz v4, :cond_2

    .line 409
    const-string v4, "packaged_gps_version"

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->packagedGoogleServicesVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 412
    :cond_2
    sget v4, Lcom/tapjoy/TapjoyConnectCore;->deviceGooglePlayServicesVersion:I

    if-eqz v4, :cond_3

    .line 413
    const-string v4, "device_gps_version"

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->deviceGooglePlayServicesVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 416
    :cond_3
    const-string v4, "publisher_user_id"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    const-string v4, "install_id"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->installID:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 418
    const-string v4, "device_name"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 419
    const-string v4, "device_type"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 420
    const-string v4, "os_version"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 421
    const-string v4, "country_code"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 422
    const-string v4, "language_code"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 423
    const-string v4, "app_version"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 424
    const-string v4, "library_version"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 425
    const-string v4, "bridge_version"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->bridgeVersion:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 426
    const-string v4, "library_revision"

    const-string v5, "5751fba"

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 427
    const-string v4, "platform"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 428
    const-string v4, "display_multiplier"

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 429
    const-string v4, "carrier_name"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    const-string v4, "carrier_country_code"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 431
    const-string v4, "mobile_country_code"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 432
    const-string v4, "mobile_network_code"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 433
    const-string v4, "device_manufacturer"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 434
    const-string v4, "screen_density"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 435
    const-string v4, "screen_layout_size"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 438
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    .line 439
    const-string v4, "connection_type"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 442
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionSubType()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->connectionSubType:Ljava/lang/String;

    .line 443
    const-string v4, "connection_subtype"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->connectionSubType:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 445
    const-string v4, "plugin"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 446
    const-string v4, "sdk_type"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 447
    const-string v4, "store_name"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 450
    const-string v4, "device_location"

    sget-boolean v5, Lcom/tapjoy/TapjoyConnectCore;->deviceLocation:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 458
    const-string v4, "store_view"

    sget-boolean v5, Lcom/tapjoy/TapjoyConnectCore;->storeView:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 461
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->segmentationParams:Ljava/util/Hashtable;

    if-eqz v4, :cond_4

    .line 463
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->segmentationParams:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->segmentationParams:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 466
    .local v3, "value":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "segments["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 472
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/tapjoy/TapjoyConnectCore;->lastTimeStamp:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 474
    :cond_5
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->generateSessionID()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    .line 483
    :goto_1
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 484
    const-string v4, "cached_ids"

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 486
    :cond_6
    const-string v4, "session_id"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->sessionID:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 487
    const-string v4, "threatmetrix_session_id"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->threatmetrixSessionID:Ljava/lang/String;

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 489
    invoke-static {}, Lcom/tapjoy/TapjoyLog;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 490
    const-string v4, "tjdebug"

    const-string v5, "true"

    invoke-static {v2, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 492
    :cond_7
    return-object v2

    .line 479
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/tapjoy/TapjoyConnectCore;->lastTimeStamp:J

    goto :goto_1
.end method

.method public static getRedirectDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1425
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->redirectDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2281
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSegmentationParams()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2357
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->segmentationParams:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static getSha1MacAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2306
    const/4 v1, 0x0

    .line 2310
    .local v1, "sha1MacAddress":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2317
    :goto_0
    return-object v1

    .line 2312
    :catch_0
    move-exception v0

    .line 2314
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error generating sha1 of macAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSha2DeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2291
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static getTimeStampAndVerifierParams()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1550
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1551
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, ""

    .line 1554
    .local v3, "verifier":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v1, v4, v6

    .line 1555
    .local v1, "time":J
    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->getVerifier(J)Ljava/lang/String;

    move-result-object v3

    .line 1557
    const-string v4, "timestamp"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1558
    const-string v4, "verifier"

    invoke-static {v0, v4, v3, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1560
    return-object v0
.end method

.method public static getURLParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 360
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 361
    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1393
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    return-object v0
.end method

.method private static getVerifier(J)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J

    .prologue
    .line 1779
    const-string v1, ""

    .line 1785
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVerifierID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1792
    :goto_0
    return-object v1

    .line 1787
    :catch_0
    move-exception v0

    .line 1789
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVerifier ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getVerifierID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1739
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->arePersistentIdsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1741
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->advertisingID:Ljava/lang/String;

    .line 1767
    :goto_0
    return-object v0

    .line 1745
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isDeviceIdPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    goto :goto_0

    .line 1750
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isMacAddressPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1752
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    goto :goto_0

    .line 1755
    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isAdvertisingIdPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1757
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->advertisingID:Ljava/lang/String;

    goto :goto_0

    .line 1760
    :cond_3
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isAndroidIdPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1762
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    goto :goto_0

    .line 1766
    :cond_4
    const-string v0, "TapjoyConnect"

    const-string v1, "Error -- no valid device identifier"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static handleConnectResponse(Ljava/lang/String;)Z
    .locals 14
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1242
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1244
    .local v5, "document":Lorg/w3c/dom/Document;
    if-eqz v5, :cond_4

    .line 1246
    const-string v11, "PackageNames"

    invoke-interface {v5, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-static {v11}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    .line 1249
    .local v8, "nodeValue":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1251
    move-object v4, v8

    .line 1252
    .local v4, "data":Ljava/lang/String;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1254
    .local v0, "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1255
    .local v3, "current":I
    const/4 v7, -0x1

    .line 1259
    .local v7, "index":I
    :goto_0
    const/16 v11, 0x2c

    invoke-virtual {v4, v11, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1262
    const/4 v11, -0x1

    if-ne v7, v11, :cond_2

    .line 1265
    const-string v11, "TapjoyConnect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1279
    const-string v11, ""

    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 1281
    sget-object v11, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1282
    .local v2, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1285
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eq v11, v9, :cond_0

    .line 1292
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1294
    const-string v11, "TapjoyConnect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MATCH: installed packageName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    sget-object v11, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 1298
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 1300
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    goto :goto_1

    .line 1273
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v11, "TapjoyConnect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1275
    add-int/lit8 v3, v7, 0x1

    goto/16 :goto_0

    .line 1306
    .end local v0    # "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3    # "current":I
    .end local v4    # "data":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_3
    const-string v11, "Success"

    invoke-interface {v5, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-static {v11}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    .line 1309
    if-eqz v8, :cond_5

    const-string v11, "true"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1319
    .end local v8    # "nodeValue":Ljava/lang/String;
    :cond_4
    :goto_2
    return v9

    .restart local v8    # "nodeValue":Ljava/lang/String;
    :cond_5
    move v9, v10

    .line 1315
    goto :goto_2
.end method

.method private handlePayPerActionResponse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1331
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1333
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 1335
    const-string v2, "Success"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 1338
    .local v1, "nodeValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1340
    const-string v2, "TapjoyConnect"

    const-string v3, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const/4 v2, 0x1

    .line 1349
    .end local v1    # "nodeValue":Ljava/lang/String;
    :goto_0
    return v2

    .line 1345
    .restart local v1    # "nodeValue":Ljava/lang/String;
    :cond_0
    const-string v2, "TapjoyConnect"

    const-string v3, "Completed Pay-Per-Action call failed."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    .end local v1    # "nodeValue":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private init()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->loadConfigurations()V

    .line 506
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    .line 510
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->doProfileAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :goto_0
    const-string v2, "unit_test_mode"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_1

    .line 520
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->integrationCheck()V

    .line 523
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->obtainDeviceInformation()V

    .line 526
    const-string v2, "debug_host_url"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "debug_host_url"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 527
    const-string v2, "TJC_SERVICE_URL"

    const-string v3, "debug_host_url"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->addConnectFlag(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_2
    const-string v2, "disable_persistent_ids"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "disable_persistent_ids"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 531
    const-string v2, "disable_persistent_ids"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->persistentIdsDisabled:Ljava/lang/String;

    .line 534
    :cond_3
    const-string v2, "disable_advertising_id_check"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "disable_advertising_id_check"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 535
    const-string v2, "disable_advertising_id_check"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->adIdCheckDisabled:Ljava/lang/String;

    .line 538
    :cond_4
    const-string v2, "user_id"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "user_id"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 540
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting userID to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user_id"

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v2, "user_id"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 544
    :cond_5
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    const-string v3, "segmentation_params"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    const-string v3, "segmentation_params"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Hashtable;

    if-eqz v2, :cond_6

    .line 546
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    const-string v3, "segmentation_params"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->setSegmentationParams(Ljava/util/Hashtable;)V

    .line 549
    :cond_6
    const-string v2, "TJC_SERVICE_URL"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "hostURL":Ljava/lang/String;
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->redirectDomain:Ljava/lang/String;

    .line 552
    const-string v3, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "debug_device_id"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "debug_device_id"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, " *debug_device_id*"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sha2_udid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-eqz v2, :cond_7

    .line 557
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->logConnectFlags()V

    .line 560
    :cond_7
    const/4 v2, 0x1

    return v2

    .line 512
    .end local v1    # "hostURL":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error building Threatmetrix profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hostURL":Ljava/lang/String;
    :cond_8
    const-string v2, ""

    goto :goto_1
.end method

.method private integrationCheck()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyIntegrationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1005
    :try_start_0
    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1007
    .local v4, "packageActivityInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1008
    .local v1, "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    if-eqz v1, :cond_0

    .line 1010
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 1011
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->checkForDependency(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1014
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageActivityInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 1016
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v6, "NameNotFoundException: Could not find package."

    invoke-direct {v5, v6}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1019
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    .restart local v4    # "packageActivityInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1021
    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1022
    new-instance v5, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dependency class in manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1024
    :cond_1
    new-instance v5, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dependency classes in manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->dependencyClassesRequired:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1028
    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->checkPermissions()V

    .line 1031
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->resolveJSBridgeMethods()V

    .line 1034
    const-string v5, "disable_advertising_id_check"

    invoke-static {v5}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "disable_advertising_id_check"

    invoke-static {v5}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1036
    const-string v5, "TapjoyConnect"

    const-string v6, "Skipping integration check for Google Play Services and Advertising ID. Do this only if you do not have access to Google Play Services."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :goto_1
    return-void

    .line 1040
    :cond_3
    iget-object v5, p0, Lcom/tapjoy/TapjoyConnectCore;->gpsHelper:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyGpsHelper;->checkGooglePlayIntegration()V

    goto :goto_1
.end method

.method private static isAdvertisingIdPresent()Z
    .locals 1

    .prologue
    .line 1129
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->advertisingID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->advertisingID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAndroidIdPresent()Z
    .locals 1

    .prologue
    .line 1134
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDeviceIdPresent()Z
    .locals 1

    .prologue
    .line 1139
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMacAddressPresent()Z
    .locals 1

    .prologue
    .line 1144
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 2001
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2003
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 2004
    const/4 v1, 0x0

    .line 2006
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isVideoEnabled()Z
    .locals 2

    .prologue
    .line 2347
    const-string v0, "disable_videos"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "disable_videos"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewOpen()Z
    .locals 1

    .prologue
    .line 1971
    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->isViewShowing:Z

    return v0
.end method

.method private loadConfigurations()V
    .locals 2

    .prologue
    .line 905
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 909
    :cond_0
    const-string v0, "enable_logging"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "enable_logging"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 913
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->checkManifestForConfigurations()V

    .line 916
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->checkResourceFileForConfigurations()V

    .line 917
    return-void
.end method

.method private logConnectFlags()V
    .locals 6

    .prologue
    .line 568
    const-string v3, "TapjoyConnect"

    const-string v4, "Connect Flags:"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v3, "TapjoyConnect"

    const-string v4, "--------------------"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 572
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 574
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;*>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 577
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string v4, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "sha_2_udid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    const-string v4, "connect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 582
    const-string v3, "TapjoyConnect"

    const-string v4, "WARNING -- only the Connect/Advertiser SDK can support sha_2_udid"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    const-string v4, "sha_2_udid"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 587
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hostURL: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "TJC_SERVICE_URL"

    invoke-static {v5}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirectDomain: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->redirectDomain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v3, "TapjoyConnect"

    const-string v4, "--------------------"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method private obtainCarrierInformation()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 711
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 712
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_4

    .line 714
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    .line 715
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    .line 720
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 722
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    .line 723
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    .line 727
    :cond_1
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v4}, Lcom/tapjoy/TapjoyConnectCore;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 732
    :try_start_0
    const-string v4, "debug_device_id"

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v4, "debug_device_id"

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 733
    const-string v4, "debug_device_id"

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 737
    :goto_0
    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const/4 v3, 0x0

    .line 742
    .local v3, "validDeviceID":Z
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 744
    const-string v4, "TapjoyConnect"

    const-string v5, "Device id is null."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :goto_1
    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANDROID SDK VERSION: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_3

    .line 766
    const-string v4, "TapjoyConnect"

    const-string v5, "TRYING TO GET SERIAL OF 2.3+ DEVICE..."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->getSerial()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "serialID":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 773
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 777
    :cond_2
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 779
    const-string v4, "TapjoyConnect"

    const-string v5, "SERIAL: Device id is null."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .end local v1    # "serialID":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 799
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    .line 813
    .end local v3    # "validDeviceID":Z
    :cond_4
    :goto_3
    return-void

    .line 735
    :cond_5
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get deviceID. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v4, 0x0

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    goto :goto_3

    .line 748
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "validDeviceID":Z
    :cond_6
    :try_start_1
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v5, "000000000000000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 750
    :cond_7
    const-string v4, "TapjoyConnect"

    const-string v5, "Device id is empty or an emulator."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 756
    :cond_8
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 757
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 783
    .restart local v1    # "serialID":Ljava/lang/String;
    :cond_9
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v5, "000000000000000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 785
    :cond_a
    const-string v4, "TapjoyConnect"

    const-string v5, "SERIAL: Device id is empty or an emulator."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 791
    :cond_b
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 792
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 810
    .end local v1    # "serialID":Ljava/lang/String;
    .end local v3    # "validDeviceID":Z
    :cond_c
    const-string v4, "TapjoyConnect"

    const-string v5, "*** ignore deviceID"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private obtainDeviceInformation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    .line 600
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 603
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 604
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 609
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    const-string v1, "android"

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    .line 617
    const-string v1, "android"

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    .line 620
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    .line 621
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    .line 624
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    .line 627
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    .line 628
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    .line 631
    const-string v1, "10.2.0"

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    .line 632
    const-string v1, "1.0.6"

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->bridgeVersion:Ljava/lang/String;

    .line 634
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->obtainScreenInformation()V

    .line 635
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->obtainMacAddress()V

    .line 636
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->obtainCarrierInformation()V

    .line 637
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->determineInstallID()V

    .line 638
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->setDeviceCapabilityFlags()V

    .line 639
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Lcom/tapjoy/TapjoyException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private obtainMacAddress()V
    .locals 6

    .prologue
    .line 673
    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v3}, Lcom/tapjoy/TapjoyConnectCore;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 677
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 679
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 681
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 683
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 685
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 687
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 690
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting device mac address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "TapjoyConnect"

    const-string v4, "*** ignore macAddress"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private obtainScreenInformation()V
    .locals 5

    .prologue
    .line 652
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 654
    new-instance v0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 656
    .local v0, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityDPI()I

    move-result v2

    sput v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:I

    .line 657
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityScale()F

    move-result v2

    sput v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensityScale:F

    .line 658
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v2

    sput v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v0    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    :cond_0
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting screen density/dimensions/layout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parsePropertiesIntoConfigFlags(Ljava/util/Properties;)V
    .locals 6
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 981
    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 983
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 987
    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 988
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 989
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/tapjoy/TapjoyConnectCore;->addConnectFlag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 990
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "TapjoyConnect"

    const-string v5, "Error parsing configuration properties in tapjoy_config.txt"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 995
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    return-void
.end method

.method public static removeOfflineLog(Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2039
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v3, "tapjoyOfflineLog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2040
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2041
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2042
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2043
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 169
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    .line 182
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;
    .param p4, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    .line 195
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    .line 196
    sput-object p2, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    .line 198
    if-eqz p3, :cond_0

    .line 199
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 201
    :cond_0
    sput-object p4, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    .line 202
    new-instance v0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyConnectCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 203
    return-void
.end method

.method private resolveJSBridgeMethods()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyIntegrationException;
        }
    .end annotation

    .prologue
    .line 1096
    :try_start_0
    const-string v3, "com.tapjoy.TJAdUnitJSBridge"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1106
    .local v1, "jsBridge":Ljava/lang/Class;
    :try_start_1
    const-string v3, "closeRequested"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1117
    const-string v3, "mraid.js"

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1120
    .local v2, "mraidString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1121
    const-string v3, "js/mraid.js"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    :cond_0
    if-nez v2, :cond_1

    .line 1124
    new-instance v3, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v4, "ClassNotFoundException: mraid.js was not found."

    invoke-direct {v3, v4}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1098
    .end local v1    # "jsBridge":Ljava/lang/Class;
    .end local v2    # "mraidString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v4, "ClassNotFoundException: com.tapjoy.TJAdUnitJSBridge was not found."

    invoke-direct {v3, v4}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1108
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "jsBridge":Ljava/lang/Class;
    :catch_1
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v4, "Try configuring Proguard or other code obfuscators to ignore com.tapjoy classes. Visit http://tech.tapjoy.comfor more information."

    invoke-direct {v3, v4}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1125
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "mraidString":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static saveOfflineLog(Ljava/lang/String;)V
    .locals 9
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 2012
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v5, "tapjoyOfflineLog"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2013
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2014
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getOfflineLogs()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_0

    .line 2015
    new-instance v3, Ljava/util/TreeMap;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2017
    .local v3, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2018
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2021
    .end local v3    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v1, p0

    .line 2024
    .local v1, "saveMessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&original_timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&offline=true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2027
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2028
    return-void
.end method

.method public static sendOfflineLogs()V
    .locals 2

    .prologue
    .line 2048
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$4;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2068
    return-void
.end method

.method private setDeviceCapabilityFlags()V
    .locals 5

    .prologue
    .line 851
    :try_start_0
    const-string v2, "android.hardware.location"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->detectCapability(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->deviceLocation:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    :try_start_1
    const-string v2, "com.facebook."

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyConnectCore;->detectSharingApplication(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareFacebook:Z

    .line 862
    const-string v2, "com.twitter."

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyConnectCore;->detectSharingApplication(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareTwitter:Z

    .line 863
    const-string v2, "com.google.android.apps.plus"

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyConnectCore;->detectSharingApplication(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareGooglePlus:Z

    .line 864
    const-string v2, "com.linkedin."

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyConnectCore;->detectSharingApplication(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->shareLinkedIn:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 872
    :goto_1
    const-string v2, "store_name"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "store_name"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 874
    const-string v2, "store_name"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    .line 877
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 880
    .local v1, "supportedStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning -- undefined STORE_NAME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .end local v1    # "supportedStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyConnectCore;->detectStore(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->storeView:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 895
    :goto_2
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to detect capabilities on devicee: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 866
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 868
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to detect sharing applications installed on devicee: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 891
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 893
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to detect store intent on devicee: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1861
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    .line 1862
    return-void
.end method

.method public static setSDKType(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1870
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    .line 1871
    return-void
.end method

.method public static setSegmentationParams(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2244
    .local p0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->segmentationParams:Ljava/util/Hashtable;

    .line 2245
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1881
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 1883
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$3;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1903
    return-void
.end method

.method public static setViewShowing(Z)V
    .locals 0
    .param p0, "showing"    # Z

    .prologue
    .line 1979
    sput-boolean p0, Lcom/tapjoy/TapjoyConnectCore;->isViewShowing:Z

    .line 1980
    return-void
.end method

.method public static viewDidClose(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1940
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->isViewShowing:Z

    .line 1941
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    if-eqz v0, :cond_0

    .line 1942
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyViewNotifier;->viewDidClose(I)V

    .line 1943
    :cond_0
    return-void
.end method

.method public static viewDidOpen(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1963
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    if-eqz v0, :cond_0

    .line 1964
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyViewNotifier;->viewDidOpen(I)V

    .line 1965
    :cond_0
    return-void
.end method

.method public static viewWillClose(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1929
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    if-eqz v0, :cond_0

    .line 1930
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyViewNotifier;->viewWillClose(I)V

    .line 1931
    :cond_0
    return-void
.end method

.method public static viewWillOpen(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1952
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->isViewShowing:Z

    .line 1953
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    if-eqz v0, :cond_0

    .line 1954
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyViewNotifier;->viewWillOpen(I)V

    .line 1955
    :cond_0
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 2081
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionComplete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getParamsWithoutAppID()Ljava/util/Map;

    move-result-object v0

    .line 2085
    .local v0, "actionURLParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_id"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2086
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2088
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PPA URL parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/TapjoyConnectCore$PPAThread;

    invoke-direct {v2, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$PPAThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2091
    return-void
.end method

.method public appPause()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->appPaused:Z

    .line 338
    return-void
.end method

.method public appResume()V
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->appPaused:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->generateSessionID()Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->appPaused:Z

    .line 351
    :cond_0
    return-void
.end method

.method public callConnect()V
    .locals 0

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->fetchAdvertisingID()V

    .line 295
    return-void
.end method

.method public completeConnectCall()V
    .locals 14

    .prologue
    const/16 v13, 0xc8

    const/4 v12, 0x1

    .line 2140
    const-string v8, "TapjoyConnect"

    const-string v9, "starting connect call..."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v0, "https://connect.tapjoy.com/"

    .line 2145
    .local v0, "connectHostURL":Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v8

    const-string v9, "https://ws.tapjoyads.com/"

    if-eq v8, v9, :cond_0

    .line 2146
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v0

    .line 2149
    :cond_0
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "connect?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v2

    .line 2152
    .local v2, "httpResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    if-eqz v2, :cond_5

    iget v8, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v8, v13, :cond_5

    .line 2154
    iget-object v8, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v8}, Lcom/tapjoy/TapjoyConnectCore;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2155
    const-string v8, "TapjoyConnect"

    const-string v9, "Successfully connected to Tapjoy"

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v4

    .line 2159
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2160
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "TapjoyConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2164
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->sendOfflineLogs()V

    .line 2166
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    if-eqz v8, :cond_2

    .line 2167
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    invoke-interface {v8}, Lcom/tapjoy/TapjoyConnectNotifier;->connectSuccess()V

    .line 2177
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 2179
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v4

    .line 2180
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "package_names"

    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-static {v4, v8, v9, v12}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v5, v8, v10

    .line 2184
    .local v5, "time":J
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-static {v5, v6, v8}, Lcom/tapjoy/TapjoyConnectCore;->getPackageNamesVerifier(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2185
    .local v7, "verifier":Ljava/lang/String;
    const-string v8, "timestamp"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9, v12}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2186
    const-string v8, "verifier"

    invoke-static {v4, v8, v7, v12}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2188
    new-instance v8, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v8}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "apps_installed?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v2

    .line 2191
    if-eqz v2, :cond_3

    iget v8, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v8, v13, :cond_3

    .line 2192
    const-string v8, "TapjoyConnect"

    const-string v9, "Successfully pinged sdkless api."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "time":J
    .end local v7    # "verifier":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 2171
    :cond_4
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    if-eqz v8, :cond_2

    .line 2172
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    invoke-interface {v8}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    goto :goto_1

    .line 2198
    :cond_5
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    if-eqz v8, :cond_3

    .line 2199
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->connectNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    invoke-interface {v8}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    goto :goto_2
.end method

.method protected detectApplication(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1572
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1575
    .local v1, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1577
    .local v0, "application":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1579
    const/4 v3, 0x1

    .line 1585
    .end local v0    # "application":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v3
.end method

.method protected detectCapability(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1624
    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 1627
    .local v2, "featuresList":[Landroid/content/pm/FeatureInfo;
    move-object v0, v2

    .local v0, "arr$":[Landroid/content/pm/FeatureInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 1628
    .local v1, "feature":Landroid/content/pm/FeatureInfo;
    iget-object v7, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1631
    if-nez p2, :cond_1

    .line 1651
    .end local v1    # "feature":Landroid/content/pm/FeatureInfo;
    :cond_0
    :goto_1
    return v5

    .line 1637
    .restart local v1    # "feature":Landroid/content/pm/FeatureInfo;
    :cond_1
    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 1645
    goto :goto_1

    .line 1627
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "feature":Landroid/content/pm/FeatureInfo;
    :cond_3
    move v5, v6

    .line 1651
    goto :goto_1
.end method

.method protected detectSharingApplication(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1597
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1598
    .local v3, "sendIntent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1602
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1604
    .local v1, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1606
    const/4 v4, 0x1

    .line 1612
    .end local v1    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v4
.end method

.method protected detectStore(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1661
    const/4 v1, 0x0

    .line 1664
    .local v1, "detected":Z
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v2, "sendIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 1670
    const-string v3, "market://details"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1671
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1674
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1675
    const/4 v1, 0x1

    .line 1689
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1697
    :cond_1
    return v1

    .line 1677
    :cond_2
    const-string v3, "gfan"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1680
    const-string v3, "com.mappn.gfan"

    invoke-virtual {p0, v3}, Lcom/tapjoy/TapjoyConnectCore;->detectApplication(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1682
    :cond_3
    const-string v3, "skt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1685
    const-string v3, "com.skt.skaf.TSCINSTALL"

    invoke-virtual {p0, v3}, Lcom/tapjoy/TapjoyConnectCore;->detectApplication(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public doProfileAsync()V
    .locals 7

    .prologue
    .line 246
    const-string v0, "TapjoyConnect"

    const-string v1, "Initializing Threatmetrix: 2.5-16"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$1;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->setCompletionNotifier(Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->setTimeout(I)V

    .line 285
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v2, "rrx68giz"

    const-string v3, "h.online-metrix.net"

    const-string v4, "http://content-js.tapjoy.com"

    const/16 v5, 0xc19

    invoke-virtual/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 286
    return-void

    .line 280
    :catch_0
    move-exception v6

    .line 282
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 7
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2710

    .line 2104
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enablePaidAppWithActionID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    .line 2108
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2111
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "tapjoy_elapsed_time"

    const-wide/16 v4, 0x0

    invoke-interface {v6, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    .line 2113
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paidApp elapsed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 2119
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2121
    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2128
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2130
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    .line 2131
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;-><init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/TapjoyConnectCore$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public fetchAdvertisingID()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$2;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 330
    return-void
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 2253
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1452
    const/4 v3, 0x0

    .line 1456
    .local v3, "serial":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.Build"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1457
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "SERIAL"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1459
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1460
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1462
    :cond_0
    const-class v4, Landroid/os/Build;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1464
    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1466
    :catch_0
    move-exception v1

    .line 1468
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TapjoyConnect"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1852
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->initialized:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1358
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 1359
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 1361
    const-string v0, "TapjoyConnect"

    const-string v1, "Releasing core static instance."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 3
    .param p1, "multiplier"    # F

    .prologue
    .line 2234
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVirtualCurrencyMultiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    sput p1, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    .line 2236
    return-void
.end method

.method public setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyViewNotifier;

    .prologue
    .line 1920
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->viewNotifier:Lcom/tapjoy/TapjoyViewNotifier;

    .line 1921
    return-void
.end method

.method public setVideoEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1911
    const-string v0, "disable_videos"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->addConnectFlag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    return-void
.end method
