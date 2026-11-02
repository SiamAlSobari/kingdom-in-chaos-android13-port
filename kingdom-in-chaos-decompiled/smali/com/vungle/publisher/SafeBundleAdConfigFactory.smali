.class public Lcom/vungle/publisher/SafeBundleAdConfigFactory;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/AdConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/vungle/publisher/c;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lcom/vungle/publisher/c;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/b;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vungle/publisher/SafeBundleAdConfigFactory;->a:Lcom/vungle/publisher/AdConfig;

    iget-object v3, v3, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/vungle/publisher/c;-><init>([Lcom/vungle/publisher/b;)V

    return-object v0
.end method

.method public varargs merge([Lcom/vungle/publisher/AdConfig;)Lcom/vungle/publisher/c;
    .locals 6
    .param p1, "adConfigs"    # [Lcom/vungle/publisher/AdConfig;

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    array-length v0, p1

    new-array v2, v0, [Lcom/vungle/publisher/b;

    .line 23
    array-length v4, p1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, p1, v3

    .line 24
    if-eqz v5, :cond_2

    .line 25
    add-int/lit8 v0, v1, 0x1

    iget-object v5, v5, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    aput-object v5, v2, v1

    .line 23
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 29
    :cond_1
    new-instance v1, Lcom/vungle/publisher/c;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/c;-><init>([Lcom/vungle/publisher/b;)V

    return-object v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method
