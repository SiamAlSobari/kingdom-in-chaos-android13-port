.class public Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
.super Ljava/lang/Object;
.source "TrustDefenderMobile.java"

# interfaces
.implements Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileStandard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    }
.end annotation


# static fields
.field private static final PROFILE_MODE:Z = false

.field private static final TAG:Ljava/lang/String;

.field public static final THM_OPTION_ALL_ASYNC:I = 0xcff

.field public static final THM_OPTION_ALL_SYNC:I = 0xcfe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THM_OPTION_LEAN_ASYNC:I = 0xc3f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THM_OPTION_LEAN_SYNC:I = 0xc3e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THM_OPTION_MOST_ASYNC:I = 0xc7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THM_OPTION_MOST_SYNC:I = 0xc7e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THM_OPTION_WEBVIEW:I = 0x26

.field private static final m_pool:Ljava/util/concurrent/Executor;

.field public static final version:Ljava/lang/String; = "2.5-16"


# instance fields
.field private final m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

.field private volatile m_active:Z

.field private final m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

.field private final m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_context:Landroid/content/Context;

.field private m_generate_session_id:Z

.field m_httpClient:Landroid/net/http/AndroidHttpClient;

.field private m_init_latch:Ljava/util/concurrent/CountDownLatch;

.field private m_inited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_manual_session_id:Z

.field private m_options:I

.field private m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

.field private m_profile_thread:Ljava/lang/Thread;

.field private final m_request_lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final m_request_lock_read:Ljava/util/concurrent/locks/Lock;

.field private final m_request_lock_write:Ljava/util/concurrent/locks/Lock;

.field private final m_requests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;",
            ">;"
        }
    .end annotation
.end field

.field private m_savedOptions:I

.field final m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

.field private m_timeout_ms:I

.field private m_timings:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 173
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_pool:Ljava/util/concurrent/Executor;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 140
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    .line 141
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    .line 142
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 143
    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    .line 144
    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    .line 145
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_savedOptions:I

    .line 149
    const/16 v0, 0x2710

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    .line 150
    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    .line 151
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    .line 152
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_manual_session_id:Z

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_init_latch:Ljava/util/concurrent/CountDownLatch;

    .line 157
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    .line 158
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    .line 159
    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    .line 160
    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    .line 164
    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/util/TimingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)I
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    .line 22
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    return v0
.end method

.method static synthetic access$500(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_init_latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private addNetworkRequest(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 678
    if-nez p1, :cond_0

    move-object v0, v1

    .line 712
    :goto_0
    return-object v0

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 682
    goto :goto_0

    .line 688
    :cond_1
    :try_start_0
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;

    invoke-direct {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;-><init>(Ljava/lang/Runnable;)V

    .line 692
    .local v0, "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    instance-of v2, p1, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    if-eqz v2, :cond_2

    .line 694
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :try_start_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :try_start_2
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 704
    :cond_2
    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->start()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 708
    .end local v0    # "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :catch_0
    move-exception v2

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    move-object v0, v1

    .line 709
    goto :goto_0

    .line 701
    .restart local v0    # "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private clearRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 839
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 844
    return-void

    .line 843
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getConfigFromServer()Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    .locals 6

    .prologue
    .line 722
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfigurationPath()Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfigurationParams()Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    move-result-object v3

    .line 726
    .local v3, "params":Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfigurationHeaders()Ljava/util/Map;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;-><init>(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;Ljava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    .line 728
    .local v0, "fetch":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    invoke-direct {p0, v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->addNetworkRequest(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 731
    .end local v0    # "fetch":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    :goto_0
    return-object v0

    .restart local v0    # "fetch":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initWebView"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 379
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;-><init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;Landroid/content/Context;Z)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 378
    .local v6, "t":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private interruptThread(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 892
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_pool:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1InterruptRunnable;

    invoke-direct {v1, p0, p1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1InterruptRunnable;-><init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/lang/Thread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 893
    return-void
.end method

.method private interruptThreads(Z)V
    .locals 4
    .param p1, "listLocked"    # Z

    .prologue
    .line 860
    if-nez p1, :cond_0

    .line 861
    :try_start_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 862
    :cond_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;

    .line 864
    .local v1, "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    invoke-direct {p0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThread(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 869
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :catchall_0
    move-exception v2

    if-nez p1, :cond_1

    .line 870
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    throw v2

    .line 869
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    if-nez p1, :cond_3

    .line 870
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 872
    :cond_3
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->reset()V

    .line 1137
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->unregister()V

    .line 1138
    return-void
.end method

.method private waitForInit()Z
    .locals 6

    .prologue
    .line 644
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 645
    const/4 v1, 0x1

    .line 662
    :cond_0
    :goto_0
    return v1

    .line 647
    :cond_1
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 648
    const/4 v1, 0x0

    .line 651
    .local v1, "initCompleted":Z
    :try_start_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_init_latch:Ljava/util/concurrent/CountDownLatch;

    iget v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 652
    if-nez v1, :cond_0

    .line 654
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v3, "Timed out waiting for init to complete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v3, "Waiting for init to complete interrupted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private waitForNetworkRequests(Z)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 8
    .param p1, "failedOkay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 747
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 752
    .local v2, "statusCode":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_start_0
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 753
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;

    .line 755
    .local v3, "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 757
    :cond_1
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    .end local v3    # "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v6, "wait for network threads"

    invoke-virtual {v5, v6}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 825
    :cond_3
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 828
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-ne v2, v5, :cond_4

    .line 829
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 831
    :cond_4
    return-object v2

    .line 763
    .restart local v3    # "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :cond_5
    :try_start_1
    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->join(J)V

    .line 764
    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    sget-object v6, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v5, v6, :cond_9

    .line 767
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 768
    if-nez p1, :cond_7

    .line 770
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads(Z)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 811
    :catch_0
    move-exception v5

    :try_start_2
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-ne v2, v5, :cond_6

    .line 812
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 815
    :cond_6
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads(Z)V

    .line 816
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 775
    :cond_7
    :try_start_3
    invoke-direct {p0, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThread(Ljava/lang/Thread;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 823
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v7, "wait for network threads"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 825
    :cond_8
    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 780
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :cond_9
    :try_start_4
    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->getHttpRunner()Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    move-result-object v1

    .line 781
    .local v1, "runner":Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;
    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->getHttpRunner()Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->getStatusCode()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v4

    .line 784
    .local v4, "tempStatus":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-ne v4, v5, :cond_a

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->getHttpStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_a

    .line 786
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connection returned http status code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->getHttpStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 789
    if-nez p1, :cond_0

    .line 791
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads(Z)V

    goto/16 :goto_1

    .line 795
    :cond_a
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-eq v4, v5, :cond_0

    .line 797
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connection returned status :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->getStatusCode()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    move-object v2, v4

    .line 800
    if-nez p1, :cond_0

    .line 802
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads(Z)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 5

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v3, "Cancel already happened"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    if-eqz v2, :cond_4

    .line 253
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 254
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads(Z)V

    .line 256
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 258
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending interrupt to profile thread TID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 262
    :cond_1
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 266
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    .local v1, "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :try_start_3
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 272
    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 276
    :catch_0
    move-exception v2

    :try_start_4
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 282
    .end local v1    # "t":Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 285
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    :try_start_6
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 298
    :cond_3
    :goto_2
    :try_start_7
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 303
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_8
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 309
    :try_start_9
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 282
    :catchall_1
    move-exception v2

    :try_start_a
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_read:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 309
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method final completeProfileRequest()V
    .locals 24

    .prologue
    .line 914
    :try_start_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "continuing profile request "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "inited already"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "after startup and thread split"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 917
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1067
    :catch_0
    move-exception v15

    .line 1069
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1070
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    if-eqz v1, :cond_3

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v1, :cond_3c

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v1}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1110
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_4
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    .line 1114
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :goto_3
    return-void

    .line 914
    :cond_5
    :try_start_3
    const-string v1, " needs init"

    goto/16 :goto_0

    .line 919
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    .line 921
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v1, v1, 0x26

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->init(Landroid/content/Context;Z)V

    .line 925
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->waitForInit()Z

    move-result v1

    if-nez v1, :cond_e

    .line 927
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "Timed out waiting for init thread, aborting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    if-eqz v1, :cond_9

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v1, :cond_c

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v1}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1110
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_a
    :goto_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    goto/16 :goto_3

    .line 922
    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    .line 1098
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    if-eqz v1, :cond_9

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;->complete(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 1104
    :catch_1
    move-exception v15

    .line 1106
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    :try_start_6
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6

    .line 1110
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_d
    throw v1

    .line 936
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v1, v1, 0x26

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    invoke-virtual {v2, v3, v1, v4}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->initJSExecutor(Landroid/content/Context;ZI)Z

    .line 938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "initJSExecutor"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 940
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_10
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1072
    :catch_2
    move-exception v15

    .line 1076
    .local v15, "e":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1077
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_11
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    if-eqz v1, :cond_12

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v1, :cond_3e

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v1}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1110
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    goto/16 :goto_3

    .line 936
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 945
    :cond_15
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfigurationPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfigurationParams()Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    move-result-object v4

    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfigurationHeaders()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;-><init>(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;Ljava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->addNetworkRequest(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;

    move-result-object v2

    if-eqz v2, :cond_1a

    move-object v13, v1

    .line 946
    .local v13, "configRunner":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "get Config"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 948
    :cond_16
    if-nez v13, :cond_1d

    .line 950
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "Failed to connect to server, aborting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_17
    :try_start_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    if-eqz v1, :cond_18

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v1, :cond_1b

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v1}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1110
    :cond_18
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_19
    :goto_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    goto/16 :goto_3

    .line 945
    .end local v13    # "configRunner":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    :cond_1a
    const/4 v13, 0x0

    goto :goto_a

    .line 1098
    .restart local v13    # "configRunner":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    :cond_1b
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    if-eqz v1, :cond_18

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;->complete(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_b

    .line 1104
    :catch_3
    move-exception v15

    .line 1106
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_d
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_c

    .line 1110
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1c
    throw v1

    .line 956
    :cond_1d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_1e
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1082
    .end local v13    # "configRunner":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_1f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    if-eqz v1, :cond_20

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v1, :cond_40

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v1}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1110
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_21
    :goto_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    throw v2

    .line 958
    .restart local v13    # "configRunner":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    :cond_22
    :try_start_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->shouldCallBrowserInfoHelper()Z

    move-result v18

    .line 960
    .local v18, "needToWaitForBrowser":Z
    if-eqz v18, :cond_23

    .line 963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->getBrowserInfoHelper()V

    .line 964
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "get browser info"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 967
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->gatherInfo()V

    .line 969
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 971
    :cond_25
    if-eqz v18, :cond_26

    .line 973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->waitForBrowserInfoHelper()V

    .line 974
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setBrowserInfo(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfo;)V

    .line 976
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "wait for browser info"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 978
    :cond_27
    move-object/from16 v0, p0

    iget v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_28

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getOrgID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-mob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 984
    .local v17, "host":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_2d

    .line 986
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "combined session id and org id too long for host name fragment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :goto_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "Started DNS request"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1006
    .end local v17    # "host":Ljava/lang/String;
    :cond_28
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->waitForNetworkRequests(Z)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v14

    .line 1007
    .local v14, "configStatus":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "wait for config network request"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1009
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->clearRequests()V

    .line 1011
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-eq v14, v1, :cond_31

    .line 1013
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve config, aborting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v14}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_2a
    :try_start_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    if-eqz v1, :cond_2b

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v1, :cond_2f

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v1}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1110
    :cond_2b
    :goto_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_2c
    :goto_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    goto/16 :goto_3

    .line 990
    .end local v14    # "configStatus":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .restart local v17    # "host":Ljava/lang/String;
    :cond_2d
    :try_start_12
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 992
    const-string v21, "d"

    .line 993
    .local v21, "prod":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getFPServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "qa2-h.online-metrix.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 995
    const-string v21, "q"

    .line 997
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".aa.online-metrix.net"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 999
    .local v16, "fqdn":Ljava/lang/String;
    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->addNetworkRequest(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_f

    .line 1098
    .end local v16    # "fqdn":Ljava/lang/String;
    .end local v17    # "host":Ljava/lang/String;
    .end local v21    # "prod":Ljava/lang/String;
    .restart local v14    # "configStatus":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :cond_2f
    :try_start_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    if-eqz v1, :cond_2b

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;->complete(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_10

    .line 1104
    :catch_4
    move-exception v15

    .line 1106
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    :try_start_14
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_11

    .line 1110
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_30
    throw v1

    .line 1021
    :cond_31
    :try_start_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    iget-object v2, v13, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setConfig(Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfig()Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->options:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_savedOptions:I

    if-eq v1, v2, :cond_32

    .line 1025
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dynamic options ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfig()Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    move-result-object v2

    iget v2, v2, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->options:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") != saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_savedOptions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TDM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1027
    .local v20, "prefsName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 1028
    .local v22, "settings":Landroid/content/SharedPreferences;
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 1029
    .local v19, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "options"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfig()Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    move-result-object v2

    iget v2, v2, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->options:I

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1030
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "Processed stored options"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1036
    .end local v19    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "prefsName":Ljava/lang/String;
    .end local v22    # "settings":Landroid/content/SharedPreferences;
    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setLocation(Landroid/location/Location;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getRiskBodyParameterMap()Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    move-result-object v5

    .line 1039
    .local v5, "postParams":Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getRiskDataHeaders()Ljava/util/Map;

    move-result-object v6

    .line 1041
    .local v6, "extra_headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->POST_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "https://"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getFPServer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/fp/clear.png"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;-><init>(Landroid/net/http/AndroidHttpClient;Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;Ljava/lang/String;Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;Ljava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->addNetworkRequest(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;

    .line 1046
    move-object/from16 v0, p0

    iget v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_33

    .line 1048
    new-instance v7, Lcom/threatmetrix/TrustDefenderMobile/PutXML;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getFPServer()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getOrgID()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getSessionID()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getConfig()Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    move-result-object v1

    iget-object v11, v1, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    invoke-direct/range {v7 .. v12}, Lcom/threatmetrix/TrustDefenderMobile/PutXML;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->addNetworkRequest(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;

    .line 1051
    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    const-string v2, "build network threads"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1053
    :cond_34
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->waitForNetworkRequests(Z)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v23

    .line 1054
    .local v23, "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual/range {v23 .. v23}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1055
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, v23

    if-eq v0, v1, :cond_35

    .line 1057
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error, profiling will be incomplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_PartialProfile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1061
    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->clearRequests()V

    .line 1063
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v1, :cond_36

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1082
    :cond_36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_37
    :try_start_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    if-eqz v1, :cond_38

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v1, :cond_3a

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v1}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 1110
    :cond_38
    :goto_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_39
    :goto_13
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    goto/16 :goto_3

    .line 1098
    :cond_3a
    :try_start_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    if-eqz v1, :cond_38

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;->complete(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_12

    .line 1104
    :catch_5
    move-exception v15

    .line 1106
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    :try_start_18
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_13

    .line 1110
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_4
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3b
    throw v1

    .line 1098
    .end local v5    # "postParams":Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    .end local v6    # "extra_headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "configRunner":Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
    .end local v14    # "configStatus":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .end local v18    # "needToWaitForBrowser":Z
    .end local v23    # "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    :cond_3c
    :try_start_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    if-eqz v1, :cond_3

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;->complete(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto/16 :goto_1

    .line 1104
    :catch_6
    move-exception v15

    .line 1106
    :try_start_1a
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_2

    .line 1110
    :catchall_5
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3d
    throw v1

    .line 1098
    .local v15, "e":Ljava/lang/Exception;
    :cond_3e
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    if-eqz v1, :cond_12

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;->complete(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto/16 :goto_8

    .line 1104
    :catch_7
    move-exception v15

    .line 1106
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_1c
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_9

    .line 1110
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_6
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3f
    throw v1

    .line 1098
    :cond_40
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    if-eqz v1, :cond_20

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;

    check-cast v1, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v3

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyV2;->complete(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    goto/16 :goto_d

    .line 1104
    :catch_8
    move-exception v15

    .line 1106
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    :try_start_1e
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v3, "profileNotify callback interrupted"

    invoke-static {v1, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_e

    .line 1110
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_7
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_41
    throw v1
.end method

.method public doProfileRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "org_id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 383
    const/16 v5, 0xcff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "fp_server"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v4, 0x0

    const/16 v5, 0xcff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "fp_server"    # Ljava/lang/String;
    .param p4, "options"    # I

    .prologue
    .line 406
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "fp_server"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 401
    const/16 v5, 0xcff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "fp_server"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "options"    # I

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 542
    :goto_0
    return-object v3

    .line 416
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 418
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "starting profile request using - 2.5-16 with options "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    if-eqz v3, :cond_1

    .line 422
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 425
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v3, p5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setProfileOptions(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 427
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 429
    :cond_2
    :try_start_2
    iput p5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    .line 444
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->reset()V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->unregister()V

    .line 448
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setCancelObject(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 450
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 451
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 454
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 456
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 457
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads(Z)V

    .line 460
    :cond_3
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 462
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v3, p3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setFPServer(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 464
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 467
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v3, p2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setOrgID(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 469
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timings:Landroid/util/TimingLogger;

    invoke-virtual {v3}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 470
    :cond_5
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_InvalidOrgID:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 542
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 473
    :cond_6
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    .line 475
    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getSessionID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 477
    :cond_7
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->new_session_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setSessionID(Ljava/lang/String;)V

    .line 479
    :cond_8
    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_manual_session_id:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    if-eqz v3, :cond_9

    .line 481
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v4, "Previous profile used manually specified session ID, but generated session ID used this time. This is likely a bug, make sure setSessionID() is called before every profile"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_9
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    .line 487
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setContext(Landroid/content/Context;)V

    .line 489
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v3, p4, v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setURLS(Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TDM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "prefsName":Ljava/lang/String;
    const/4 v3, 0x0

    iput v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_savedOptions:I

    .line 497
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 501
    .local v2, "settings":Landroid/content/SharedPreferences;
    :try_start_5
    const-string v3, "options"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_savedOptions:I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 508
    :goto_1
    :try_start_6
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 510
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 535
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "prefsName":Ljava/lang/String;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    :try_start_7
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    if-eqz v3, :cond_a

    .line 536
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 537
    :cond_a
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    .line 538
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 542
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 505
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "prefsName":Ljava/lang/String;
    .restart local v2    # "settings":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v3

    :try_start_8
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto :goto_1

    .line 516
    :cond_b
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applying inverted saved options - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_savedOptions:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with options, resulting in  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    iget v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_savedOptions:I

    and-int/lit8 v4, v4, 0x26

    xor-int/2addr v3, v4

    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_savedOptions:I

    and-int/lit16 v4, v4, 0x300

    or-int/2addr v3, v4

    iput v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    .line 519
    iget v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_c

    .line 521
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->completeProfileRequest()V

    .line 522
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v3

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    .line 542
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 526
    :cond_c
    :try_start_9
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;-><init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    .line 528
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 531
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 542
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "prefsName":Ljava/lang/String;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock_write:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "fp_server"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "disableWebView"    # Z

    .prologue
    .line 393
    if-eqz p5, :cond_0

    .line 394
    const/16 v5, 0xcd9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const/16 v5, 0xcff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    goto :goto_0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v0

    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->exportedType(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->init(Landroid/content/Context;Z)V

    .line 321
    return-void
.end method

.method public initWithoutWebView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->init(Landroid/content/Context;Z)V

    .line 316
    return-void
.end method

.method public pauseLocationServices(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->pause()V

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->resume()V

    goto :goto_0
.end method

.method public registerLocationServices(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    const-wide/32 v2, 0xdbba0

    const-wide/32 v4, 0x36ee80

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->registerLocationServices(Landroid/content/Context;JJI)Z

    move-result v0

    return v0
.end method

.method public registerLocationServices(Landroid/content/Context;JJI)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lowPowerUpdateTime"    # J
    .param p4, "highPowerUpdateTime"    # J
    .param p6, "accuracy"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->registerLocationServices(Landroid/content/Context;JJI)Z

    move-result v0

    return v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "apikey"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setApiKey(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setCompletionNotifier(Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;)V
    .locals 2
    .param p1, "notifier"    # Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 234
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 241
    :cond_0
    return-void

    .line 238
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0
.end method

.method public setCustomAttributes(Ljava/util/List;)V
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
    .line 226
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setCustomAttributes(Ljava/util/List;)V

    .line 227
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setLocation(Landroid/location/Location;)V

    .line 556
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getSessionID()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setSessionID(Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getSessionID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->getSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_manual_session_id:Z

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_1
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_manual_session_id:Z

    goto :goto_0
.end method

.method final setStatus(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    .locals 2
    .param p1, "status"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_td:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->coreType()Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/InternalStatusCode;)V

    .line 668
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 183
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    .line 184
    return-void
.end method

.method public tidyUp()V
    .locals 3

    .prologue
    .line 584
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->cancel()V

    .line 588
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->unregister()V

    .line 592
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->waitForInit()Z

    .line 594
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_pool:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1ShutdownRunnable;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v1, p0, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1ShutdownRunnable;-><init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Landroid/net/http/AndroidHttpClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 626
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browser_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->waitForBrowserInfoHelper()V

    .line 633
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->clearWebView()V

    .line 637
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 638
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_init_latch:Ljava/util/concurrent/CountDownLatch;

    .line 640
    return-void
.end method
