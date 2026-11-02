.class final Lcom/droidhang/pay/DHGooglePaymentUtil$1;
.super Ljava/lang/Object;
.source "DHGooglePaymentUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/pay/DHGooglePaymentUtil;->paidOk(Ljava/lang/String;Ljava/lang/String;Landroid/opengl/GLSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentUtil$1;->val$itemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/droidhang/pay/DHGooglePaymentUtil$1;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentUtil$1;->val$itemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentUtil$1;->val$developerPayload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/droidhang/pay/DHGooglePaymentUtil;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
