.class Lcom/sponsorpay/utils/SponsorPayLogger$1;
.super Ljava/lang/Object;
.source "SponsorPayLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/utils/SponsorPayLogger;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/utils/SponsorPayLogger;

.field private final synthetic val$exception:Ljava/lang/Exception;

.field private final synthetic val$level:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sponsorpay/utils/SponsorPayLogger;Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->this$0:Lcom/sponsorpay/utils/SponsorPayLogger;

    iput-object p2, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->val$level:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    iput-object p3, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->val$message:Ljava/lang/String;

    iput-object p5, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->val$exception:Ljava/lang/Exception;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->this$0:Lcom/sponsorpay/utils/SponsorPayLogger;

    invoke-static {v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->access$0(Lcom/sponsorpay/utils/SponsorPayLogger;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    return-void

    .line 112
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/utils/SPLoggerListener;

    .line 113
    .local v0, "listener":Lcom/sponsorpay/utils/SPLoggerListener;
    iget-object v2, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->val$level:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    iget-object v3, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->val$message:Ljava/lang/String;

    iget-object v5, p0, Lcom/sponsorpay/utils/SponsorPayLogger$1;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sponsorpay/utils/SPLoggerListener;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
