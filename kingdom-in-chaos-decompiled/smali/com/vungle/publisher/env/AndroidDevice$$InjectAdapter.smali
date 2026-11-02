.class public final Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/vungle/publisher/env/AndroidDevice;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/env/AndroidDevice;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/env/AndroidDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "com.vungle.publisher.env.AndroidDevice"

    const-string v1, "members/com.vungle.publisher.env.AndroidDevice"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/publisher/env/AndroidDevice;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 42
    const-string v0, "android.media.AudioManager"

    const-class v1, Lcom/vungle/publisher/env/AndroidDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 43
    const-string v0, "android.view.WindowManager"

    const-class v1, Lcom/vungle/publisher/env/AndroidDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 44
    const-string v0, "android.content.Context"

    const-class v1, Lcom/vungle/publisher/env/AndroidDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 45
    const-string v0, "@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences"

    const-class v1, Lcom/vungle/publisher/env/AndroidDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy"

    const-class v1, Lcom/vungle/publisher/env/AndroidDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 47
    return-void
.end method

.method public final get()Lcom/vungle/publisher/env/AndroidDevice;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/vungle/publisher/env/AndroidDevice;

    invoke-direct {v0}, Lcom/vungle/publisher/env/AndroidDevice;-><init>()V

    .line 69
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 70
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->get()Lcom/vungle/publisher/env/AndroidDevice;

    move-result-object v0

    return-object v0
.end method

.method public final getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/env/AndroidDevice;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/env/AndroidDevice;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p1, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/media/AudioManager;

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p1, Lcom/vungle/publisher/env/AndroidDevice;->h:Landroid/view/WindowManager;

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p1, Lcom/vungle/publisher/env/AndroidDevice;->i:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p1, Lcom/vungle/publisher/env/AndroidDevice;->j:Landroid/content/SharedPreferences;

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;

    iput-object v0, p1, Lcom/vungle/publisher/env/AndroidDevice;->k:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;

    .line 84
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/env/AndroidDevice;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/env/AndroidDevice$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/env/AndroidDevice;)V

    return-void
.end method
