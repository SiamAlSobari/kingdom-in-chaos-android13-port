.class public final Lcom/vungle/publisher/display/view/CountdownProgressView;
.super Landroid/widget/TextView;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/display/view/CountdownProgressView$Factory;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vungle/publisher/image/BitmapFactory;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/vungle/publisher/image/BitmapFactory;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->setTextColor(I)V

    .line 27
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->setTextSize(F)V

    .line 28
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->setGravity(I)V

    .line 30
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vg_timer.png"

    invoke-interface {p2, v2}, Lcom/vungle/publisher/image/BitmapFactory;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "VungleAd"

    const-string v2, "error loading countdown progress bar background"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/vungle/publisher/display/view/CountdownProgressView;->a:I

    iget v1, p0, Lcom/vungle/publisher/display/view/CountdownProgressView;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->invalidate()V

    .line 57
    return-void
.end method


# virtual methods
.method final setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/vungle/publisher/display/view/CountdownProgressView;->a:I

    if-eq p1, v0, :cond_0

    .line 42
    iput p1, p0, Lcom/vungle/publisher/display/view/CountdownProgressView;->a:I

    .line 43
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->a()V

    .line 45
    :cond_0
    return-void
.end method

.method final setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 48
    iget v0, p0, Lcom/vungle/publisher/display/view/CountdownProgressView;->b:I

    if-eq p1, v0, :cond_0

    .line 49
    iput p1, p0, Lcom/vungle/publisher/display/view/CountdownProgressView;->b:I

    .line 50
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/CountdownProgressView;->a()V

    .line 52
    :cond_0
    return-void
.end method
