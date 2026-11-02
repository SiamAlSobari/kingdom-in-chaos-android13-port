.class public Lcom/wwcd/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field public static final SUPER_LONG:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alertLong(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Lcom/wwcd/util/ToastUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/wwcd/util/ToastUtil$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method

.method public static final alertLong(Landroid/content/Context;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method

.method public static final alertShort(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/wwcd/util/ToastUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/wwcd/util/ToastUtil$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public static final alertShort(Landroid/content/Context;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 35
    return-void
.end method
