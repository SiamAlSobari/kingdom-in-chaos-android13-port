.class Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;
.super Ljava/lang/Object;
.source "TrustDefenderMobileCore.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final MAX_ATTR_LEN:I = 0xff

.field private static final TAG:Ljava/lang/String;

.field static final THM_OPTION_ALL:I = 0xcfe

.field static final THM_OPTION_ALL_ASYNC:I = 0xcff

.field static final THM_OPTION_ALL_SYNC:I = 0xcfe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final THM_OPTION_ALTERNATE_ID:I = 0x200

.field static final THM_OPTION_ASYNC:I = 0x1

.field static final THM_OPTION_BROWSER_PLUGINS:I = 0x20

.field static final THM_OPTION_BROWSER_STRING:I = 0x2

.field static final THM_OPTION_DNS:I = 0x400

.field static final THM_OPTION_GATHER_URLS:I = 0x100

.field static final THM_OPTION_LEAN_ASYNC:I = 0xc3f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final THM_OPTION_LEAN_SYNC:I = 0xc3e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final THM_OPTION_MIME_TYPES:I = 0x4

.field static final THM_OPTION_MOST_ASYNC:I = 0xc7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final THM_OPTION_MOST_SYNC:I = 0xc7e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final THM_OPTION_SCREEN_DIM:I = 0x10

.field static final THM_OPTION_SELF_HASH:I = 0x800

.field static final THM_OPTION_SYNC:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final THM_OPTION_TCP_FP:I = 0x40

.field static final THM_OPTION_TCP_TARPIT:I = 0x80

.field static final THM_OPTION_TIME_ZONE:I = 0x8

.field static final THM_OPTION_VALID_DYNAMIC:I = 0x300

.field static final THM_OPTION_VALID_DYNAMIC_INVERSE:I = 0x26

.field static final THM_OPTION_WEBVIEW:I = 0x26

.field public static version:Ljava/lang/String;


# instance fields
.field customAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_HTML5Cookie:Ljava/lang/String;

.field private m_api_key:Ljava/lang/String;

.field private m_browserStringFromJS:Ljava/lang/String;

.field private m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

.field private volatile m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

.field private m_context:Landroid/content/Context;

.field m_cookie:Ljava/lang/String;

.field m_deviceFingerprint:Ljava/lang/String;

.field m_deviceState:Ljava/lang/String;

.field m_dstDiff:I

.field m_flashCookie:Ljava/lang/String;

.field private m_fontCount:Ljava/lang/String;

.field private m_fontHash:Ljava/lang/String;

.field m_fp_server:Ljava/lang/String;

.field m_gmtOffset:I

.field private m_imei:Ljava/lang/String;

.field m_location:Landroid/location/Location;

.field m_options:I

.field m_org_id:Ljava/lang/String;

.field m_referrerURL:Ljava/lang/String;

.field m_screenHeight:I

.field m_screenWidth:I

.field private m_self_hash:Ljava/lang/String;

.field m_session_id:Ljava/lang/String;

.field private volatile m_status:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

.field private m_timings:Landroid/util/TimingLogger;

.field m_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "2.5-16"

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->version:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_session_id:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_flashCookie:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_HTML5Cookie:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cookie:Ljava/lang/String;

    .line 98
    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_gmtOffset:I

    .line 99
    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_dstDiff:I

    .line 100
    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_screenWidth:I

    .line 101
    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_screenHeight:I

    .line 102
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_url:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_imei:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontHash:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontCount:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_referrerURL:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_deviceFingerprint:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_deviceState:Ljava/lang/String;

    .line 110
    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_options:I

    .line 111
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_org_id:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fp_server:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_location:Landroid/location/Location;

    .line 115
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->customAttributes:Ljava/util/ArrayList;

    .line 117
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    .line 119
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    .line 121
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_api_key:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    .line 124
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_status:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 129
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    .line 130
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browserStringFromJS:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_self_hash:Ljava/lang/String;

    return-void
.end method

.method private setBrowserStringFromJS(Ljava/lang/String;)V
    .locals 0
    .param p1, "browserString"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browserStringFromJS:Ljava/lang/String;

    .line 251
    return-void
.end method

.method private setTimingLogger(Landroid/util/TimingLogger;)V
    .locals 0
    .param p1, "timings"    # Landroid/util/TimingLogger;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    .line 216
    return-void
.end method


# virtual methods
.method final gatherInfo()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 384
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->TAG:Ljava/lang/String;

    .line 385
    iget v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_options:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1

    .line 387
    new-instance v4, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;

    invoke-direct {v4}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;-><init>()V

    .line 388
    .local v4, "tzInfo":Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;
    invoke-static {v4}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getTimeZoneInfo(Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 390
    iget v6, v4, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;->dstDiff:I

    iput v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_dstDiff:I

    .line 391
    iget v6, v4, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;->gmtOffset:I

    iput v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_gmtOffset:I

    .line 393
    :cond_0
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "get time zone"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 397
    .end local v4    # "tzInfo":Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;
    :cond_1
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cookie:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_flashCookie:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_HTML5Cookie:Ljava/lang/String;

    if-nez v6, :cond_e

    .line 401
    :cond_2
    iget v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_options:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->isDodgySerial()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 403
    .local v5, "useAlternateIDScheme":Z
    :goto_0
    const/4 v0, 0x0

    .line 404
    .local v0, "androidID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 406
    .local v3, "genID":Ljava/lang/String;
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cookie:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 408
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0, v5}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cookie:Ljava/lang/String;

    .line 412
    :cond_3
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "cookie"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 415
    :cond_4
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_HTML5Cookie:Ljava/lang/String;

    if-nez v6, :cond_7

    .line 417
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->getPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 421
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 401
    .end local v0    # "androidID":Ljava/lang/String;
    .end local v3    # "genID":Ljava/lang/String;
    .end local v5    # "useAlternateIDScheme":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 424
    .restart local v0    # "androidID":Ljava/lang/String;
    .restart local v3    # "genID":Ljava/lang/String;
    .restart local v5    # "useAlternateIDScheme":Z
    :cond_6
    invoke-static {v3, v5}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->getHTML5Cookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_HTML5Cookie:Ljava/lang/String;

    .line 426
    :cond_7
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "LSC"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 429
    :cond_8
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_imei:Ljava/lang/String;

    if-nez v6, :cond_9

    .line 431
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_imei:Ljava/lang/String;

    .line 432
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "imei"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 435
    :cond_9
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_flashCookie:Ljava/lang/String;

    if-nez v6, :cond_d

    .line 437
    if-nez v0, :cond_a

    .line 438
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_a
    if-nez v3, :cond_b

    .line 440
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->getPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 442
    :cond_b
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 444
    :cond_c
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_imei:Ljava/lang/String;

    invoke-static {v0, v3, v6, v5}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->getFlashCookie$26396263(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_flashCookie:Ljava/lang/String;

    .line 446
    :cond_d
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "Flash"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 450
    .end local v0    # "androidID":Ljava/lang/String;
    .end local v3    # "genID":Ljava/lang/String;
    .end local v5    # "useAlternateIDScheme":Z
    :cond_e
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 451
    :cond_10
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 452
    :cond_11
    iget v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_options:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_13

    iget v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_screenHeight:I

    if-eqz v6, :cond_12

    iget v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_screenWidth:I

    if-nez v6, :cond_13

    .line 454
    :cond_12
    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;-><init>(Landroid/view/Display;)V

    .line 455
    .local v1, "display":Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;
    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_screenWidth:I

    .line 456
    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_screenHeight:I

    .line 458
    .end local v1    # "display":Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;
    :cond_13
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "get screen dimensions"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 460
    :cond_14
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_16

    :cond_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 461
    :cond_16
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 462
    :cond_17
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getDeviceState()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_deviceState:Ljava/lang/String;

    .line 463
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "get device state"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 465
    :cond_18
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1a

    :cond_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 466
    :cond_1a
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 467
    :cond_1b
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_deviceFingerprint:Ljava/lang/String;

    if-nez v6, :cond_1c

    .line 469
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getDeviceFingerprint(Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_deviceFingerprint:Ljava/lang/String;

    .line 471
    :cond_1c
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "get device fingerprint"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 473
    :cond_1d
    iget v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_options:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_self_hash:Ljava/lang/String;

    if-nez v6, :cond_1e

    .line 475
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->checkThisPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_self_hash:Ljava/lang/String;

    .line 476
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "get self hash"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 479
    :cond_1e
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontCount:Ljava/lang/String;

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontHash:Ljava/lang/String;

    if-nez v6, :cond_21

    .line 481
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v2, "fontCount":Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getFontHashAndCount(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontHash:Ljava/lang/String;

    .line 483
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontHash:Ljava/lang/String;

    if-eqz v6, :cond_20

    .line 485
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontCount:Ljava/lang/String;

    .line 488
    :cond_20
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontCount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fonts gives: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontHash:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .end local v2    # "fontCount":Ljava/lang/StringBuilder;
    :cond_21
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "Get Fontlist"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 491
    :cond_22
    return-void
.end method

.method final getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_api_key:Ljava/lang/String;

    return-object v0
.end method

.method final getConfig()Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    return-object v0
.end method

.method final getConfigurationHeaders()Ljava/util/Map;
    .locals 3
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
    .line 499
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browserStringFromJS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    return-object v0
.end method

.method final getConfigurationParams()Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;-><init>()V

    .line 363
    .local v0, "params":Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    const-string v1, "org_id"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_org_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 364
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_session_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 365
    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 366
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 368
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_api_key:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_api_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "api_key"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_api_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 373
    :cond_0
    return-object v0
.end method

.method final getConfigurationPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fp_server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fp/mobile/conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getFPServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fp_server:Ljava/lang/String;

    return-object v0
.end method

.method final getOrgID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_org_id:Ljava/lang/String;

    return-object v0
.end method

.method final getRiskBodyParameterMap()Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    iget-object v13, v13, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->jb_paths:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->checkURLs(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 548
    .local v6, "foundURLs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    .line 549
    .local v11, "urlCheckCount":I
    const-string v12, ";"

    invoke-static {v6, v12}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->ListToSeperatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, "foundPaths":Ljava/lang/String;
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v13, "Check URLs"

    invoke-virtual {v12, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 553
    :cond_0
    const-string v4, ""

    .line 557
    .local v4, "experimentalAttributes":Ljava/lang/String;
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    iget v12, v12, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->options:I

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_1

    .line 559
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    iget-object v12, v12, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->ex_paths:Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getURLs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 560
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v13, "get URLs"

    invoke-virtual {v12, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 565
    :cond_1
    new-instance v8, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    invoke-direct {v8}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;-><init>()V

    .line 566
    .local v8, "jaParams":Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    const/16 v12, 0xff

    invoke-virtual {v8, v12}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->setPostValueLengthLimit(I)V

    .line 568
    const-string v12, "w"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    iget-object v13, v13, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->w:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 569
    const-string v12, "c"

    iget v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_gmtOffset:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 570
    const-string v12, "z"

    iget v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_dstDiff:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 571
    const-string v12, "f"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_screenWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_screenHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 572
    const-string v12, "lh"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_url:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 573
    const-string v12, "dr"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_referrerURL:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 575
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    iget-object v12, v12, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginCount:Ljava/lang/String;

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 577
    const-string v12, "p"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    iget-object v13, v13, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPlugins:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 578
    const-string v12, "pl"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    iget-object v13, v13, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginCount:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 579
    const-string v12, "ph"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    iget-object v13, v13, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_browserPluginsFromJSHash:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 581
    :cond_2
    const-string v12, "hh"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_org_id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_session_id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 582
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    iget v12, v12, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypeCount:I

    if-lez v12, :cond_3

    .line 584
    const-string v12, "mt"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    iget-object v13, v13, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypesHash:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 585
    const-string v12, "mn"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    iget v13, v13, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;->m_mimeTypeCount:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 587
    :cond_3
    const-string v12, "mdf"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_deviceFingerprint:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 588
    const-string v12, "mds"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_deviceState:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 590
    const-string v12, "imei"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_imei:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 593
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_location:Landroid/location/Location;

    if-eqz v12, :cond_4

    .line 595
    const-string v12, "tdlat"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_location:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 596
    const-string v12, "tdlon"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_location:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 597
    const-string v12, "tdlacc"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_location:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 600
    :cond_4
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->customAttributes:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->customAttributes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 602
    const/4 v1, 0x0

    .line 603
    .local v1, "count":I
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->customAttributes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    .local v0, "attr":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "aca"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v0, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 607
    const/4 v12, 0x5

    if-ge v2, v12, :cond_5

    move v1, v2

    .line 608
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 611
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v12, "ah"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_self_hash:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 612
    const-string v12, "la"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    iget-object v14, v14, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->w:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_HTML5Cookie:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 613
    const-string v12, "lq"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browserStringFromJS:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 615
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    const/16 v13, 0x2710

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit16 v12, v12, 0x2710

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 616
    .local v10, "temp":Ljava/lang/String;
    const-string v12, "nu"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 617
    const-string v12, "fc"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    iget-object v14, v14, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->w:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_flashCookie:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 619
    const-string v12, "ftsn"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontCount:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 620
    const-string v12, "fts"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fontHash:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 621
    const-string v12, "v"

    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 622
    const-string v12, "o"

    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 623
    const-string v12, "mf"

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 624
    const-string v12, "l"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 625
    const-string v12, "fg"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_flashCookie:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 626
    const-string v12, "ls"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_HTML5Cookie:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 627
    const-string v13, "gr"

    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    iget-object v12, v12, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->jb_paths:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_9

    const-string v12, ""

    :goto_1
    invoke-virtual {v8, v13, v12}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 628
    const-string v12, "grr"

    invoke-virtual {v8, v12, v5}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 630
    const-string v12, "at"

    const-string v13, "agent_mobile"

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 631
    const-string v12, "av"

    sget-object v13, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->version:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 632
    const-string v12, "ex3"

    invoke-virtual {v8, v12, v4}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 634
    new-instance v9, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    invoke-direct {v9}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;-><init>()V

    .line 635
    .local v9, "postParams":Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    const-string v12, "org_id"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_org_id:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 636
    const-string v12, "session_id"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_session_id:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 637
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v13, "params without xor"

    invoke-virtual {v12, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 638
    :cond_6
    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->getUrlEncodedParamString()Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "encoded":Ljava/lang/String;
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v13, "url encoding"

    invoke-virtual {v12, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 641
    :cond_7
    const-string v12, "ja"

    iget-object v13, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_session_id:Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 642
    const-string v12, "h"

    const-string v13, "0"

    invoke-virtual {v9, v12, v13}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    move-result-object v12

    const-string v13, "m"

    const-string v14, "2"

    invoke-virtual {v12, v13, v14}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 644
    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_timings:Landroid/util/TimingLogger;

    const-string v13, "Params xor\'d"

    invoke-virtual {v12, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 646
    :cond_8
    return-object v9

    .line 627
    .end local v3    # "encoded":Ljava/lang/String;
    .end local v9    # "postParams":Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    :cond_9
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method

.method final getRiskDataHeaders()Ljava/util/Map;
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
    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 513
    .local v0, "extra_headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browserStringFromJS:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browserStringFromJS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting User-Agent to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browserStringFromJS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browserStringFromJS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cookie:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 521
    const-string v1, "Cookie"

    const-string v2, "thx_guid="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :goto_0
    const-string v1, "Referer"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_referrerURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-object v0

    .line 525
    :cond_1
    const-string v1, "Cookie"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thx_guid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cookie:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_session_id:Ljava/lang/String;

    return-object v0
.end method

.method final getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatus returns: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_status:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_status:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    return-object v0
.end method

.method final reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cookie:Ljava/lang/String;

    .line 138
    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_gmtOffset:I

    .line 139
    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_dstDiff:I

    .line 140
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_deviceState:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_location:Landroid/location/Location;

    .line 143
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    .line 162
    return-void
.end method

.method final setApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "apikey"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_api_key:Ljava/lang/String;

    .line 182
    return-void
.end method

.method final setBrowserInfo(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;)V
    .locals 0
    .param p1, "browserInfo"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;

    .line 167
    return-void
.end method

.method final setCancelObject(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "cancel"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    return-void
.end method

.method final setConfig(Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;)V
    .locals 0
    .param p1, "conf"    # Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    .line 226
    return-void
.end method

.method final setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_context:Landroid/content/Context;

    .line 236
    return-void
.end method

.method final setCustomAttributes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->customAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->customAttributes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method final setFPServer(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fp_server"    # Ljava/lang/String;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    const-string p1, "h.online-metrix.net"

    .line 268
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_fp_server:Ljava/lang/String;

    .line 277
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid hostname "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_location:Landroid/location/Location;

    .line 211
    return-void
.end method

.method final setOrgID(Ljava/lang/String;)Z
    .locals 2
    .param p1, "org_id"    # Ljava/lang/String;

    .prologue
    .line 287
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 289
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->TAG:Ljava/lang/String;

    const-string v1, "Invalid org_id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    .line 292
    :cond_1
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_org_id:Ljava/lang/String;

    .line 293
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final setProfileOptions(I)Z
    .locals 2
    .param p1, "options"    # I

    .prologue
    .line 303
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->TAG:Ljava/lang/String;

    const-string v1, "Synchronous is deprecated, please switch to ASYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    .line 309
    :cond_0
    iput p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_options:I

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_session_id:Ljava/lang/String;

    .line 187
    return-void
.end method

.method final setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V
    .locals 0
    .param p1, "status"    # Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_status:Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    .line 206
    return-void
.end method

.method final setURLS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 321
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    const-string p2, "TrustDefenderMobileSDK"

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_referrerURL:Ljava/lang/String;

    .line 328
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 330
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_url:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_referrerURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_url:Ljava/lang/String;

    .line 343
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 340
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->m_url:Ljava/lang/String;

    goto :goto_0
.end method
