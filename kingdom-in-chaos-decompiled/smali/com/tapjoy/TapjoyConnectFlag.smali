.class public Lcom/tapjoy/TapjoyConnectFlag;
.super Ljava/lang/Object;
.source "TapjoyConnectFlag.java"


# static fields
.field public static final CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;
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

.field public static final DEBUG_DEVICE_ID:Ljava/lang/String; = "debug_device_id"

.field public static final DEBUG_HOST_URL:Ljava/lang/String; = "debug_host_url"

.field public static final DISABLE_ADVERTISING_ID_CHECK:Ljava/lang/String; = "disable_advertising_id_check"

.field public static final DISABLE_PERSISTENT_IDS:Ljava/lang/String; = "disable_persistent_ids"

.field public static final DISABLE_VIDEOS:Ljava/lang/String; = "disable_videos"

.field public static final ENABLE_LOGGING:Ljava/lang/String; = "enable_logging"

.field public static final EVENT_URL:Ljava/lang/String; = "TJC_EVENT_SERVICE_URL"

.field public static final FLAG_ARRAY:[Ljava/lang/String;

.field public static final HOST_URL:Ljava/lang/String; = "TJC_SERVICE_URL"

.field public static final SEGMENTATION_PARAMS:Ljava/lang/String; = "segmentation_params"

.field public static final SHA_2_UDID:Ljava/lang/String; = "sha_2_udid"

.field public static final STORE_ARRAY:[Ljava/lang/String;

.field public static final STORE_GFAN:Ljava/lang/String; = "gfan"

.field public static final STORE_NAME:Ljava/lang/String; = "store_name"

.field public static final STORE_SKT:Ljava/lang/String; = "skt"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final VIDEO_CACHE_COUNT:Ljava/lang/String; = "video_cache_count"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "debug_device_id"

    aput-object v1, v0, v3

    const-string v1, "debug_host_url"

    aput-object v1, v0, v4

    const-string v1, "sha_2_udid"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "store_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disable_videos"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "video_cache_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "enable_logging"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TJC_SERVICE_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TJC_EVENT_SERVICE_URL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    .line 106
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "gfan"

    aput-object v1, v0, v3

    const-string v1, "skt"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/tapjoy/TapjoyConnectFlag$1;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectFlag$1;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectFlag;->CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
