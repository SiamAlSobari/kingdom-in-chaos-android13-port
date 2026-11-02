.class public Lcom/vungle/publisher/inject/Injector;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/bs;


# static fields
.field private static final c:Lcom/vungle/publisher/inject/Injector;


# instance fields
.field public a:Ldagger/ObjectGraph;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/inject/OverrideModule;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/vungle/publisher/bs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/vungle/publisher/inject/Injector;

    invoke-direct {v0}, Lcom/vungle/publisher/inject/Injector;-><init>()V

    sput-object v0, Lcom/vungle/publisher/inject/Injector;->c:Lcom/vungle/publisher/inject/Injector;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/inject/Injector;->b:Ljava/util/List;

    .line 33
    return-void
.end method

.method private a()Lcom/vungle/publisher/bs;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vungle/publisher/inject/Injector;->e:Lcom/vungle/publisher/bs;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    invoke-direct {v0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/inject/Injector;->e:Lcom/vungle/publisher/bs;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/inject/Injector;->e:Lcom/vungle/publisher/bs;

    return-object v0
.end method

.method public static getInstance()Lcom/vungle/publisher/inject/Injector;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vungle/publisher/inject/Injector;->c:Lcom/vungle/publisher/inject/Injector;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/Injector;->d:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "VungleInject"

    const-string v1, "already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v0, "VungleInject"

    const-string v1, "initializing"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/vungle/publisher/inject/Injector;->a()Lcom/vungle/publisher/bs;

    move-result-object v0

    .line 136
    invoke-interface {v0, p1, p2}, Lcom/vungle/publisher/bs;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/vungle/publisher/inject/Injector;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ldagger/ObjectGraph;->create([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/inject/Injector;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "VungleInject"

    const-string v2, "error initializing injector"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/Injector;->d:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "VungleInject"

    const-string v1, "full screen ad activity class in injector NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting full screen ad activity class in injector "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/vungle/publisher/inject/Injector;->a()Lcom/vungle/publisher/bs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vungle/publisher/bs;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "VungleInject"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setBitmapFactory(Lcom/vungle/publisher/image/BitmapFactory;)V
    .locals 3
    .param p1, "bitmapFactory"    # Lcom/vungle/publisher/image/BitmapFactory;

    .prologue
    .line 38
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/Injector;->d:Z

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "VungleInject"

    const-string v1, "bitmap factory in injector NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting bitmap factory in injector "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/vungle/publisher/inject/Injector;->a()Lcom/vungle/publisher/bs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vungle/publisher/bs;->setBitmapFactory(Lcom/vungle/publisher/image/BitmapFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "VungleInject"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setWrapperFramework(Lcom/vungle/publisher/env/WrapperFramework;)V
    .locals 3
    .param p1, "wrapperFramework"    # Lcom/vungle/publisher/env/WrapperFramework;

    .prologue
    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/Injector;->d:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "VungleInject"

    const-string v1, "wrapper framework in injector NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting wrapper framework in injector: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/vungle/publisher/inject/Injector;->a()Lcom/vungle/publisher/bs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vungle/publisher/bs;->setWrapperFramework(Lcom/vungle/publisher/env/WrapperFramework;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "VungleInject"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setWrapperFrameworkVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "wrapperFrameworkVersion"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/Injector;->d:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "VungleInject"

    const-string v1, "wrapper framework version in injector NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting wrapper framework version in injector: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/vungle/publisher/inject/Injector;->a()Lcom/vungle/publisher/bs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vungle/publisher/bs;->setWrapperFrameworkVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "VungleInject"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
