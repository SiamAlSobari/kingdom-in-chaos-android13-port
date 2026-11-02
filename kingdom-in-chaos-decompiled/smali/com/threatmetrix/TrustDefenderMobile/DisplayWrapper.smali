.class Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;
.super Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;
.source "DisplayWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final m_getHeight:Ljava/lang/reflect/Method;

.field private static final m_getSize:Ljava/lang/reflect/Method;

.field private static final m_getWidth:Ljava/lang/reflect/Method;


# instance fields
.field private final m_display:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 17
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->TAG:Ljava/lang/String;

    .line 23
    const-class v0, Landroid/view/Display;

    const-string v1, "getWidth"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getWidth:Ljava/lang/reflect/Method;

    .line 24
    const-class v0, Landroid/view/Display;

    const-string v1, "getHeight"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getHeight:Ljava/lang/reflect/Method;

    .line 25
    const-class v0, Landroid/view/Display;

    const-string v1, "getSize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Point;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getSize:Ljava/lang/reflect/Method;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/view/Display;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_display:Landroid/view/Display;

    .line 31
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 55
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getSize:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 59
    .local v0, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_display:Landroid/view/Display;

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getSize:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 70
    .end local v0    # "point":Landroid/graphics/Point;
    :goto_0
    return v2

    .line 62
    :cond_0
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getHeight:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_display:Landroid/view/Display;

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getHeight:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 65
    .local v1, "ret":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 69
    .end local v1    # "ret":Ljava/lang/Integer;
    :cond_1
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->TAG:Ljava/lang/String;

    const-string v4, "unable to get display height"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getWidth()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getSize:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 39
    .local v0, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_display:Landroid/view/Display;

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getSize:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 50
    .end local v0    # "point":Landroid/graphics/Point;
    :goto_0
    return v2

    .line 42
    :cond_0
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getWidth:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 44
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_display:Landroid/view/Display;

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->m_getWidth:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 45
    .local v1, "ret":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 49
    .end local v1    # "ret":Ljava/lang/Integer;
    :cond_1
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->TAG:Ljava/lang/String;

    const-string v4, "unable to get display width"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
