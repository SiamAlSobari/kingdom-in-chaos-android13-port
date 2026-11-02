.class public Lcom/vungle/publisher/display/view/PostRollFragment;
.super Lcom/vungle/publisher/display/view/WebViewFragment;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/display/view/PostRollFragment$a;
    }
.end annotation


# instance fields
.field private d:Lcom/vungle/publisher/display/view/PostRollFragment$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vungle/publisher/display/view/PostRollFragment$a;Lcom/vungle/publisher/bb$a;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/vungle/publisher/display/view/PostRollFragment$a;
    .param p3, "webViewClientListener"    # Lcom/vungle/publisher/bb$a;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vungle/publisher/display/view/WebViewFragment;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2, p3}, Lcom/vungle/publisher/display/view/PostRollFragment;->a(Lcom/vungle/publisher/display/view/PostRollFragment$a;Lcom/vungle/publisher/bb$a;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/display/view/PostRollFragment;->d:Lcom/vungle/publisher/display/view/PostRollFragment$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/display/view/PostRollFragment$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v1, "VungleAd"

    const-string v2, "exception in onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/bb$a;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/WebViewFragment;->a(Lcom/vungle/publisher/bb$a;)V

    return-void
.end method

.method public final a(Lcom/vungle/publisher/display/view/PostRollFragment$a;Lcom/vungle/publisher/bb$a;)V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    invoke-super {p0, p2}, Lcom/vungle/publisher/display/view/WebViewFragment;->a(Lcom/vungle/publisher/bb$a;)V

    .line 58
    iput-object p1, p0, Lcom/vungle/publisher/display/view/PostRollFragment;->d:Lcom/vungle/publisher/display/view/PostRollFragment$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "VungleAd"

    const-string v2, "exception in onActivityCreated"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "postRollFragment"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/WebViewFragment;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "VungleAd"

    const-string v2, "exception in onCreate"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/display/view/WebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :try_start_1
    iget-object v1, p0, Lcom/vungle/publisher/display/view/PostRollFragment;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/vungle/publisher/ba;

    iget-object v3, p0, Lcom/vungle/publisher/display/view/PostRollFragment;->d:Lcom/vungle/publisher/display/view/PostRollFragment$a;

    invoke-direct {v2, v3}, Lcom/vungle/publisher/ba;-><init>(Lcom/vungle/publisher/ba$a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 40
    :goto_1
    const-string v2, "VungleAd"

    const-string v3, "exception in onCreateView"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/WebViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
