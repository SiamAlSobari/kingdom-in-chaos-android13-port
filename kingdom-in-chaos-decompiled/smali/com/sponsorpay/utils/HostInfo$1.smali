.class Lcom/sponsorpay/utils/HostInfo$1;
.super Ljava/lang/Thread;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/utils/HostInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/utils/HostInfo;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sponsorpay/utils/HostInfo;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/utils/HostInfo$1;->this$0:Lcom/sponsorpay/utils/HostInfo;

    iput-object p3, p0, Lcom/sponsorpay/utils/HostInfo$1;->val$context:Landroid/content/Context;

    .line 118
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo$1;->this$0:Lcom/sponsorpay/utils/HostInfo;

    iget-object v1, p0, Lcom/sponsorpay/utils/HostInfo$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/utils/HostInfo;->retrieveAdvertisingId(Landroid/content/Context;)V

    .line 121
    return-void
.end method
