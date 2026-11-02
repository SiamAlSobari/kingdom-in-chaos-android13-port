.class final Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1InterruptRunnable;
.super Ljava/lang/Object;
.source "TrustDefenderMobile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThread(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InterruptRunnable"
.end annotation


# instance fields
.field final t:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/lang/Thread;)V
    .locals 0
    .param p2, "t"    # Ljava/lang/Thread;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1InterruptRunnable;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1InterruptRunnable;->t:Ljava/lang/Thread;

    .line 882
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 887
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sending interrupt to TID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1InterruptRunnable;->t:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 888
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1InterruptRunnable;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 889
    return-void
.end method
