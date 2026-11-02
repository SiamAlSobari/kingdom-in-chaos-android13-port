.class public Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;
.super Lcom/vungle/publisher/protocol/message/MessageFactory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/message/MessageFactory",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/AdConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/vungle/publisher/bf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/cb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected e:Lcom/vungle/publisher/bh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/MessageFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    new-array v0, p1, [Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->d:Lcom/vungle/publisher/cb;

    invoke-interface {v1}, Lcom/vungle/publisher/cb;->a()Lcom/vungle/publisher/ca;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->a:Lcom/vungle/publisher/ca;

    .line 271
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->c:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension$Factory;

    invoke-virtual {v1}, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension$Factory;->b()Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->b:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension;

    .line 272
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->c:Ljava/lang/Boolean;

    .line 273
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->a:Lcom/vungle/publisher/AdConfig;

    invoke-virtual {v1}, Lcom/vungle/publisher/AdConfig;->isSoundEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->d:Ljava/lang/Boolean;

    .line 274
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->e:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->f:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->d:Lcom/vungle/publisher/cb;

    invoke-interface {v1}, Lcom/vungle/publisher/cb;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->g:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->h:Ljava/lang/String;

    .line 278
    sget-object v1, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$a;->a:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$a;

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->i:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$a;

    .line 279
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->n()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->j:Ljava/lang/Float;

    .line 280
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->k:Ljava/lang/String;

    .line 281
    return-object v0
.end method
