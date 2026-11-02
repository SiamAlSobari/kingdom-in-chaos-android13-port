.class Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;
.super Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;
.source "StatWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final m_getAvailableBlocks:Ljava/lang/reflect/Method;

.field private static final m_getAvailableBlocksLong:Ljava/lang/reflect/Method;

.field private static final m_getBlockCount:Ljava/lang/reflect/Method;

.field private static final m_getBlockCountLong:Ljava/lang/reflect/Method;

.field private static final m_getBlockSize:Ljava/lang/reflect/Method;

.field private static final m_getBlockSizeLong:Ljava/lang/reflect/Method;


# instance fields
.field private final m_stat:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    .line 25
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getBlockSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSize:Ljava/lang/reflect/Method;

    .line 26
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getBlockSizeLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSizeLong:Ljava/lang/reflect/Method;

    .line 27
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getAvailableBlocks"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocks:Ljava/lang/reflect/Method;

    .line 28
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getAvailableBlocksLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocksLong:Ljava/lang/reflect/Method;

    .line 29
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getBlockCount"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockCount:Ljava/lang/reflect/Method;

    .line 30
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getBlockCountLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockCountLong:Ljava/lang/reflect/Method;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;-><init>()V

    .line 35
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    .line 36
    return-void
.end method


# virtual methods
.method public final getAvailableBlocks()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocksLong:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocksLong:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 81
    .local v0, "ret":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 92
    .end local v0    # "ret":Ljava/lang/Long;
    :goto_0
    return-wide v1

    .line 85
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocks:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocks:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 88
    .local v0, "ret":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    .line 92
    .end local v0    # "ret":Ljava/lang/Integer;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public final getBlockCount()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockCountLong:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockCountLong:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 43
    .local v0, "ret":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 54
    .end local v0    # "ret":Ljava/lang/Long;
    :goto_0
    return-wide v1

    .line 47
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockCount:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockCount:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 50
    .local v0, "ret":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    .line 54
    .end local v0    # "ret":Ljava/lang/Integer;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public final getBlockSize()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSizeLong:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSizeLong:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 62
    .local v0, "ret":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 73
    .end local v0    # "ret":Ljava/lang/Long;
    :goto_0
    return-wide v1

    .line 66
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSize:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSize:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    .local v0, "ret":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    .line 73
    .end local v0    # "ret":Ljava/lang/Integer;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
