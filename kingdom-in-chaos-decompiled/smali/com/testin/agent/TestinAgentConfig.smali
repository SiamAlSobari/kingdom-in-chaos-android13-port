.class public final Lcom/testin/agent/TestinAgentConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/testin/agent/TestinAgentConfig$1;,
        Lcom/testin/agent/TestinAgentConfig$Builder;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/testin/agent/TestinAgentConfig;

.field public static final permissions:[Ljava/lang/String;


# instance fields
.field private aPer:Z

.field private ak:Ljava/lang/String;

.field private chl:Ljava/lang/String;

.field private isAPM:Z

.field private isCh:Z

.field private isDebug:Z

.field private isEx:Z

.field private isNCh:Z

.field private isNetworkMonitor:Z

.field private isRBack:Z

.field private isRWifi:Z

.field private lPer:Z

.field private ui:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.GET_TASKS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/testin/agent/TestinAgentConfig;->permissions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/TestinAgentConfig;->chl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/TestinAgentConfig;->ui:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/testin/agent/TestinAgentConfig;->isDebug:Z

    iput-boolean v1, p0, Lcom/testin/agent/TestinAgentConfig;->lPer:Z

    iput-boolean v1, p0, Lcom/testin/agent/TestinAgentConfig;->aPer:Z

    iput-boolean v1, p0, Lcom/testin/agent/TestinAgentConfig;->isNCh:Z

    iput-boolean v2, p0, Lcom/testin/agent/TestinAgentConfig;->isAPM:Z

    iput-boolean v1, p0, Lcom/testin/agent/TestinAgentConfig;->isCh:Z

    iput-boolean v1, p0, Lcom/testin/agent/TestinAgentConfig;->isEx:Z

    iput-boolean v1, p0, Lcom/testin/agent/TestinAgentConfig;->isRWifi:Z

    iput-boolean v1, p0, Lcom/testin/agent/TestinAgentConfig;->isRBack:Z

    iput-boolean v2, p0, Lcom/testin/agent/TestinAgentConfig;->isNetworkMonitor:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/testin/agent/TestinAgentConfig$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/testin/agent/TestinAgentConfig;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/testin/agent/TestinAgentConfig;
    .locals 1

    sget-object v0, Lcom/testin/agent/TestinAgentConfig;->mInstance:Lcom/testin/agent/TestinAgentConfig;

    return-object v0
.end method

.method static synthetic access$002(Lcom/testin/agent/TestinAgentConfig;)Lcom/testin/agent/TestinAgentConfig;
    .locals 0

    sput-object p0, Lcom/testin/agent/TestinAgentConfig;->mInstance:Lcom/testin/agent/TestinAgentConfig;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/testin/agent/TestinAgentConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isEx:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/testin/agent/TestinAgentConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isRWifi:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/testin/agent/TestinAgentConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isRBack:Z

    return p1
.end method

.method static synthetic access$202(Lcom/testin/agent/TestinAgentConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/TestinAgentConfig;->ak:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/testin/agent/TestinAgentConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isDebug:Z

    return p1
.end method

.method static synthetic access$402(Lcom/testin/agent/TestinAgentConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->lPer:Z

    return p1
.end method

.method static synthetic access$502(Lcom/testin/agent/TestinAgentConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/TestinAgentConfig;->chl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/testin/agent/TestinAgentConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->aPer:Z

    return p1
.end method

.method static synthetic access$702(Lcom/testin/agent/TestinAgentConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isNCh:Z

    return p1
.end method

.method static synthetic access$802(Lcom/testin/agent/TestinAgentConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/TestinAgentConfig;->ui:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/testin/agent/TestinAgentConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isCh:Z

    return p1
.end method

.method public static getInstance()Lcom/testin/agent/TestinAgentConfig;
    .locals 1

    sget-object v0, Lcom/testin/agent/TestinAgentConfig;->mInstance:Lcom/testin/agent/TestinAgentConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/testin/agent/TestinAgentConfig;

    invoke-direct {v0}, Lcom/testin/agent/TestinAgentConfig;-><init>()V

    sput-object v0, Lcom/testin/agent/TestinAgentConfig;->mInstance:Lcom/testin/agent/TestinAgentConfig;

    :cond_0
    sget-object v0, Lcom/testin/agent/TestinAgentConfig;->mInstance:Lcom/testin/agent/TestinAgentConfig;

    return-object v0
.end method


# virtual methods
.method public getAppChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig;->chl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig;->ui:Ljava/lang/String;

    return-object v0
.end method

.method public isAppActPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->aPer:Z

    return v0
.end method

.method public isAppLogPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->lPer:Z

    return v0
.end method

.method public isCollectNDKCrash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->isNCh:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->isDebug:Z

    return v0
.end method

.method public isOpenAPM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->isAPM:Z

    return v0
.end method

.method public isOpenCrash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->isCh:Z

    return v0
.end method

.method public isOpenEx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->isEx:Z

    return v0
.end method

.method public isOpenNetworkMonitor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->isNetworkMonitor:Z

    return v0
.end method

.method public isReportOnBack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->isRBack:Z

    return v0
.end method

.method public isReportOnlyWifi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/testin/agent/TestinAgentConfig;->isRWifi:Z

    return v0
.end method

.method public setAppActPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->aPer:Z

    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/TestinAgentConfig;->chl:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/TestinAgentConfig;->ak:Ljava/lang/String;

    return-void
.end method

.method public setAppLogPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->lPer:Z

    return-void
.end method

.method public setCollectNDKCrash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isNCh:Z

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isDebug:Z

    return-void
.end method

.method public setOpenAPM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isAPM:Z

    return-void
.end method

.method public setOpenCrash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isCh:Z

    return-void
.end method

.method public setOpenEx(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isEx:Z

    return-void
.end method

.method public setOpenNetworkMonitor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isNetworkMonitor:Z

    return-void
.end method

.method public setReportOnBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isRBack:Z

    return-void
.end method

.method public setReportOnlyWifi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/testin/agent/TestinAgentConfig;->isRWifi:Z

    return-void
.end method

.method public setUserInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/TestinAgentConfig;->ui:Ljava/lang/String;

    return-void
.end method
