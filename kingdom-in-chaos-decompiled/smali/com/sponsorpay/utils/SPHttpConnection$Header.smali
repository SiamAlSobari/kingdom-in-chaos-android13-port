.class Lcom/sponsorpay/utils/SPHttpConnection$Header;
.super Ljava/lang/Object;
.source "SPHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/utils/SPHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Header"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/sponsorpay/utils/SPHttpConnection;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/utils/SPHttpConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sponsorpay/utils/SPHttpConnection$Header;->this$0:Lcom/sponsorpay/utils/SPHttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/sponsorpay/utils/SPHttpConnection$Header;->key:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/sponsorpay/utils/SPHttpConnection$Header;->value:Ljava/lang/String;

    .line 149
    return-void
.end method
