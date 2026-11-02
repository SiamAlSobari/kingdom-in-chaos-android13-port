.class public Lcom/droidhang/pay/DHGooglePaymentUtil;
.super Ljava/lang/Object;
.source "DHGooglePaymentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-static {p0, p1}, Lcom/droidhang/pay/DHGooglePaymentUtil;->nPaidOk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nPaidOk(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static paidOk(Ljava/lang/String;Ljava/lang/String;Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "developerPayload"    # Ljava/lang/String;
    .param p2, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 13
    if-eqz p2, :cond_0

    .line 14
    new-instance v0, Lcom/droidhang/pay/DHGooglePaymentUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/droidhang/pay/DHGooglePaymentUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    return-void
.end method

.method public static purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {}, Lcom/droidhang/pay/DHGooglePaymentManager;->getInstance()Lcom/droidhang/pay/DHGooglePaymentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/droidhang/pay/DHGooglePaymentManager;->purchase(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
