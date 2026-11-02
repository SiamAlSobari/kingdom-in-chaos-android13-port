.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$11;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->getOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

.field private final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/view/GestureDetector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$11;->this$0:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$11;->val$gestureDetector:Landroid/view/GestureDetector;

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$11;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
