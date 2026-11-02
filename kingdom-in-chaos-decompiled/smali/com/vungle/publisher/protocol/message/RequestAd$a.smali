.class public abstract Lcom/vungle/publisher/protocol/message/RequestAd$a;
.super Lcom/vungle/publisher/protocol/message/MessageFactory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Lcom/vungle/publisher/protocol/message/RequestAd",
        "<TQ;>;>",
        "Lcom/vungle/publisher/protocol/message/MessageFactory",
        "<TQ;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/bf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/bh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/MessageFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Lcom/vungle/publisher/protocol/message/RequestAd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/message/RequestAd$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/message/RequestAd;

    .line 77
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$a;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd;->a:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$a;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd;->b:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$a;->a:Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Factory;

    invoke-virtual {v1}, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Factory;->b()Lcom/vungle/publisher/protocol/message/RequestAd$Demographic;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd;->c:Lcom/vungle/publisher/protocol/message/RequestAd$Demographic;

    .line 80
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$a;->c:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;

    invoke-virtual {v1}, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;->b()Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd;->d:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;

    .line 81
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$a;->b:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd;->e:Ljava/lang/Boolean;

    .line 82
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$a;->d:Lcom/vungle/publisher/bh;

    invoke-interface {v1}, Lcom/vungle/publisher/bh;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd;->f:Ljava/lang/String;

    .line 83
    return-object v0
.end method
