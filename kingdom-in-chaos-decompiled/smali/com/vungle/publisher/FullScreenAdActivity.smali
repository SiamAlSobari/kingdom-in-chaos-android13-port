.class public Lcom/vungle/publisher/FullScreenAdActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/FullScreenAdActivity$2;,
        Lcom/vungle/publisher/FullScreenAdActivity$b;,
        Lcom/vungle/publisher/FullScreenAdActivity$a;,
        Lcom/vungle/publisher/FullScreenAdActivity$c;
    }
.end annotation


# static fields
.field public static final AD_CONFIG_EXTRA_KEY:Ljava/lang/String; = "adConfig"

.field public static final AD_ID_EXTRA_KEY:Ljava/lang/String; = "adId"


# instance fields
.field a:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/reporting/AdReportEventListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/bf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/display/view/VideoFragment$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/env/SdkState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private g:Lcom/vungle/publisher/db/model/Ad;

.field private h:Lcom/vungle/publisher/display/view/AdFragment;

.field private i:Lcom/vungle/publisher/display/view/PostRollFragment;

.field private j:Landroid/view/View;

.field private k:Lcom/vungle/publisher/display/view/VideoFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 347
    return-void
.end method

.method private a(Lcom/vungle/publisher/display/view/AdFragment;)V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/display/view/AdFragment;

    if-eq p1, v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 298
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 299
    const v1, 0x1020002

    iput-object p1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {p1}, Lcom/vungle/publisher/display/view/AdFragment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 300
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/display/view/PostRollFragment;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->a(ZZ)V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->j:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)V

    .line 246
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/display/view/PostRollFragment;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/display/view/AdFragment;)V

    goto :goto_0
.end method

.method final a(Lcom/vungle/publisher/a;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->c:Lcom/vungle/publisher/bf;

    sget-object v1, Lcom/vungle/publisher/bd;->b:Lcom/vungle/publisher/bd;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/bf;->a(Lcom/vungle/publisher/bd;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/vungle/publisher/a;->isImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/vungle/publisher/FullScreenAdActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/FullScreenAdActivity$1;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 198
    :cond_0
    return-void
.end method

.method final a(Lcom/vungle/publisher/db/model/EventTracking$a;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 260
    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/db/model/Ad;

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/Ad;->f()Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string v2, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "call to action destination "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz v3, :cond_0

    .line 266
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 267
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/FullScreenAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 269
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    iget-object v4, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/db/model/Ad;

    iget-object v2, v2, Lcom/vungle/publisher/reporting/AdReportEventListener;->g:Lcom/vungle/publisher/cc;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/vungle/publisher/db/model/Ad;->g()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v4, p1, v6, v5}, Lcom/vungle/publisher/cc;->a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    .line 276
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->a(ZZ)V

    .line 277
    return-void

    .line 273
    :catch_0
    move-exception v2

    .line 274
    const-string v4, "VungleAd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error loading call-to-action URL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final a(ZZ)V
    .locals 3

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/event/EventBus;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vungle/publisher/ao;

    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/db/model/Ad;

    invoke-direct {v0, v2, p2}, Lcom/vungle/publisher/ao;-><init>(Lcom/vungle/publisher/db/model/Ad;Z)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 291
    :goto_1
    return-void

    .line 281
    :cond_0
    :try_start_1
    new-instance v0, Lcom/vungle/publisher/an;

    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/db/model/Ad;

    invoke-direct {v0, v2, p2}, Lcom/vungle/publisher/an;-><init>(Lcom/vungle/publisher/db/model/Ad;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    :try_start_2
    const-string v1, "VungleAd"

    const-string v2, "error exiting ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    throw v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->k:Lcom/vungle/publisher/display/view/VideoFragment;

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->a()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->k:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/display/view/AdFragment;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    const-string v0, "VungleAd"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    sget-object v1, Lcom/vungle/publisher/db/model/AdReportEvent$a;->a:Lcom/vungle/publisher/db/model/AdReportEvent$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {v0}, Lcom/vungle/publisher/display/view/AdFragment;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "VungleAd"

    const-string v2, "error in onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 79
    :try_start_0
    const-string v1, "VungleAd"

    const-string v2, "interstital ad"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    .line 84
    invoke-virtual {v1, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 87
    const-string v1, "adConfig"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/a;

    .line 88
    const-string v3, "adId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v7, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ad/AdManager;

    iget-object v3, v7, Lcom/vungle/publisher/ad/AdManager;->g:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {v3, v2}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Ljava/lang/String;)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v7, Lcom/vungle/publisher/ad/AdManager;->n:Lcom/vungle/publisher/db/model/StreamingAd$Factory;

    invoke-virtual {v3, v2}, Lcom/vungle/publisher/db/model/StreamingAd$Factory;->a(Ljava/lang/String;)Lcom/vungle/publisher/db/model/StreamingAd;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/db/model/Ad;

    .line 91
    if-nez v3, :cond_1

    .line 92
    const-string v1, "VungleAd"

    const-string v2, "no ad in activity"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v2, Lcom/vungle/publisher/aj;

    invoke-direct {v2}, Lcom/vungle/publisher/aj;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 140
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Landroid/view/View;

    .line 99
    invoke-virtual {v3}, Lcom/vungle/publisher/db/model/Ad;->k()Lcom/vungle/publisher/db/model/Video;

    move-result-object v8

    .line 100
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->b()V

    .line 102
    if-eqz p1, :cond_4

    move v7, v5

    .line 103
    :goto_1
    if-nez v7, :cond_2

    .line 104
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v9, Lcom/vungle/publisher/x;

    invoke-direct {v9, v3, v1}, Lcom/vungle/publisher/x;-><init>(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/a;)V

    invoke-virtual {v2, v9}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 107
    :cond_2
    iget-object v9, p0, Lcom/vungle/publisher/FullScreenAdActivity;->e:Lcom/vungle/publisher/display/view/VideoFragment$Factory;

    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v10, "videoFragment"

    invoke-virtual {v2, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/display/view/VideoFragment;

    iget-object v10, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    new-instance v11, Lcom/vungle/publisher/FullScreenAdActivity$b;

    invoke-direct {v11, p0}, Lcom/vungle/publisher/FullScreenAdActivity$b;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;)V

    if-nez v2, :cond_5

    iget-object v2, v9, Lcom/vungle/publisher/display/view/VideoFragment$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-static {v2, v3, v1, v10, v11}, Lcom/vungle/publisher/display/view/VideoFragment$Factory;->a(Lcom/vungle/publisher/display/view/VideoFragment;Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/a;Lcom/vungle/publisher/reporting/AdReportEventListener;Lcom/vungle/publisher/display/view/VideoFragment$a;)Lcom/vungle/publisher/display/view/VideoFragment;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->k:Lcom/vungle/publisher/display/view/VideoFragment;

    .line 111
    instance-of v2, v3, Lcom/vungle/publisher/db/model/LocalAd;

    if-eqz v2, :cond_3

    .line 112
    move-object v0, v3

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/LocalAd;->u()Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v9, "postRollFragment"

    invoke-virtual {v2, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/display/view/PostRollFragment;

    iput-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/display/view/PostRollFragment;

    .line 115
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/display/view/PostRollFragment;

    if-nez v2, :cond_6

    .line 116
    new-instance v2, Ljava/io/File;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/vungle/publisher/db/model/LocalArchive;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x1

    const-string v10, "index.html"

    aput-object v10, v9, v3

    invoke-static {v9}, Lcom/vungle/publisher/bo;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v3, "VungleAd"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "post-roll URL: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v3, Lcom/vungle/publisher/display/view/PostRollFragment;

    new-instance v9, Lcom/vungle/publisher/FullScreenAdActivity$a;

    invoke-direct {v9, p0}, Lcom/vungle/publisher/FullScreenAdActivity$a;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;)V

    new-instance v10, Lcom/vungle/publisher/FullScreenAdActivity$c;

    invoke-direct {v10, p0}, Lcom/vungle/publisher/FullScreenAdActivity$c;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;)V

    invoke-direct {v3, v2, v9, v10}, Lcom/vungle/publisher/display/view/PostRollFragment;-><init>(Ljava/lang/String;Lcom/vungle/publisher/display/view/PostRollFragment$a;Lcom/vungle/publisher/bb$a;)V

    iput-object v3, p0, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/display/view/PostRollFragment;

    .line 126
    :cond_3
    :goto_3
    invoke-virtual {p0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/a;)V

    .line 127
    invoke-interface {v1}, Lcom/vungle/publisher/a;->getOrientation()Lcom/vungle/publisher/Orientation;

    move-result-object v2

    sget-object v1, Lcom/vungle/publisher/FullScreenAdActivity$2;->a:[I

    invoke-virtual {v2}, Lcom/vungle/publisher/Orientation;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v8, Lcom/vungle/publisher/db/model/Video;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_7

    move v1, v5

    :goto_4
    if-eqz v1, :cond_8

    const-string v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad orientation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (landscape)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    :goto_5
    invoke-virtual {p0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->setRequestedOrientation(I)V

    .line 128
    if-eqz v7, :cond_b

    const-string v1, "currentFragment"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_6
    const-string v2, "postRollFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 130
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    const-string v2, "VungleAd"

    const-string v3, "error playing ad"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p0, v6, v6}, Lcom/vungle/publisher/FullScreenAdActivity;->a(ZZ)V

    goto/16 :goto_0

    :cond_4
    move v7, v6

    .line 102
    goto/16 :goto_1

    .line 107
    :cond_5
    :try_start_1
    invoke-static {v2, v3, v1, v10, v11}, Lcom/vungle/publisher/display/view/VideoFragment$Factory;->a(Lcom/vungle/publisher/display/view/VideoFragment;Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/a;Lcom/vungle/publisher/reporting/AdReportEventListener;Lcom/vungle/publisher/display/view/VideoFragment$a;)Lcom/vungle/publisher/display/view/VideoFragment;

    move-result-object v2

    goto/16 :goto_2

    .line 121
    :cond_6
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/display/view/PostRollFragment;

    new-instance v3, Lcom/vungle/publisher/FullScreenAdActivity$a;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/FullScreenAdActivity$a;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;)V

    new-instance v9, Lcom/vungle/publisher/FullScreenAdActivity$c;

    invoke-direct {v9, p0}, Lcom/vungle/publisher/FullScreenAdActivity$c;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;)V

    invoke-virtual {v2, v3, v9}, Lcom/vungle/publisher/display/view/PostRollFragment;->a(Lcom/vungle/publisher/display/view/PostRollFragment$a;Lcom/vungle/publisher/bb$a;)V

    goto/16 :goto_3

    .line 127
    :pswitch_0
    const-string v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ad orientation "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_5

    :cond_7
    move v1, v6

    goto :goto_4

    :cond_8
    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v8, Lcom/vungle/publisher/db/model/Video;->n:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_9

    move v1, v5

    :goto_7
    if-eqz v1, :cond_a

    const-string v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad orientation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (portrait)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    goto/16 :goto_5

    :cond_9
    move v1, v6

    goto :goto_7

    :cond_a
    const-string v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ad orientation "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (unknown) --> auto-rotate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto/16 :goto_5

    .line 128
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 133
    :cond_c
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->a(I)Z

    .line 237
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->f:Lcom/vungle/publisher/env/SdkState;

    const-string v1, "VungleAd"

    const-string v2, "onAdActivityPause()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkState;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/publisher/env/SdkState;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "VungleAd"

    const-string v2, "error in onPause()"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 203
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 204
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->f:Lcom/vungle/publisher/env/SdkState;

    const-string v1, "VungleAd"

    const-string v2, "onAdActivityResume()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/SdkState;->a(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/vungle/publisher/env/SdkState;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "VungleAd"

    const-string v2, "error in onResume()"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "currentFragment"

    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {v1}, Lcom/vungle/publisher/display/view/AdFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "VungleAd"

    const-string v2, "error in onSaveInstanceState"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 307
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 308
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string v1, "VungleAd"

    const-string v2, "error in onWindowFocusChanged"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
