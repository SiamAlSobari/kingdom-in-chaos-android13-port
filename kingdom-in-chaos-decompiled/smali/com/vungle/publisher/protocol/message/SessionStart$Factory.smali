.class public Lcom/vungle/publisher/protocol/message/SessionStart$Factory;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/SessionStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/bf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/bh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/vungle/publisher/protocol/message/SessionStart;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/vungle/publisher/protocol/message/SessionStart;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/message/SessionStart;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/SessionStart$Factory;->a:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/SessionStart;->a:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/SessionStart$Factory;->a:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/SessionStart;->b:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/SessionStart$Factory;->a:Lcom/vungle/publisher/bf;

    invoke-interface {v1}, Lcom/vungle/publisher/bf;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/SessionStart;->c:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/SessionStart$Factory;->b:Lcom/vungle/publisher/bh;

    invoke-interface {v1}, Lcom/vungle/publisher/bh;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/SessionStart;->d:Ljava/lang/String;

    .line 62
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/SessionStart;->e:Ljava/lang/Long;

    .line 63
    return-object v0
.end method
