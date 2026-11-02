.class final Lcom/umeng/analytics/game/c$a;
.super Ljava/lang/Object;
.source "InternalGameAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/game/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/game/c;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Lcom/umeng/analytics/game/c$a;->a:Lcom/umeng/analytics/game/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/c$a;->b:Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/game/c$a;->c:I

    .line 305
    iput-object p2, p0, Lcom/umeng/analytics/game/c$a;->b:Ljava/lang/String;

    .line 306
    iput p3, p0, Lcom/umeng/analytics/game/c$a;->c:I

    .line 307
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 311
    iget v0, p0, Lcom/umeng/analytics/game/c$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c$a;->a:Lcom/umeng/analytics/game/c;

    iget-object v1, p0, Lcom/umeng/analytics/game/c$a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/umeng/analytics/game/c$a;->c:I

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/analytics/game/c$a;->a:Lcom/umeng/analytics/game/c;

    iget-object v1, p0, Lcom/umeng/analytics/game/c$a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/umeng/analytics/game/c$a;->c:I

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/game/c;->b(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
