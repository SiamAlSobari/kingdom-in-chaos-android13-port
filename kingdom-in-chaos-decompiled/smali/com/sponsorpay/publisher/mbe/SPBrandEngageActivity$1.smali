.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;
.super Ljava/lang/Object;
.source "SPBrandEngageActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;Z)V

    .line 59
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->access$1(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;)V

    .line 60
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
