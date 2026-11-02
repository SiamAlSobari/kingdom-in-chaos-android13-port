.class final Lcom/vungle/publisher/display/view/VideoFragment$4;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/display/view/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/vungle/publisher/display/view/VideoFragment;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/display/view/VideoFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/vungle/publisher/display/view/VideoFragment$4;->b:Lcom/vungle/publisher/display/view/VideoFragment;

    iput-object p2, p0, Lcom/vungle/publisher/display/view/VideoFragment$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$4;->b:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-static {v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/vungle/publisher/display/view/VideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "VungleAd"

    const-string v1, "cta overlay onClick"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$4;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$4;->b:Lcom/vungle/publisher/display/view/VideoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/display/view/VideoFragment;->b(Z)V

    .line 321
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$4;->b:Lcom/vungle/publisher/display/view/VideoFragment;

    iget-object v0, v0, Lcom/vungle/publisher/display/view/VideoFragment;->c:Lcom/vungle/publisher/display/view/VideoFragment$a;

    invoke-interface {v0}, Lcom/vungle/publisher/display/view/VideoFragment$a;->b()V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    const-string v0, "VungleAd"

    const-string v1, "cta overlay onClick, but not enabled"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
