.class Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "SPOfferWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity$1;->this$0:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    .line 138
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 141
    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity$1;->this$0:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-static {v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->access$0(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity$1;->this$0:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-static {v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->access$0(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity$1;->this$0:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->access$1(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;Landroid/app/ProgressDialog;)V

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 146
    return-void
.end method
