.class public Lcom/vungle/publisher/env/SdkConfig;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/EventListener;",
            "Lcom/vungle/publisher/bm;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/publisher/ca;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field e:Lcom/vungle/publisher/event/ClientEventListenerAdapter$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    .line 27
    const-class v0, Lcom/vungle/publisher/ca;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->c:Ljava/util/Set;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bm;

    .line 69
    invoke-interface {v0}, Lcom/vungle/publisher/bm;->d()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    return-void
.end method

.method public final varargs a([Lcom/vungle/publisher/EventListener;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 39
    if-eqz p1, :cond_3

    .line 40
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    .line 41
    if-nez v4, :cond_0

    const-string v0, "VungleEvent"

    const-string v4, "ignoring add null event listener"

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    const-string v0, "VungleEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adding event listener "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->e:Lcom/vungle/publisher/event/ClientEventListenerAdapter$Factory;

    iget-object v0, v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;

    iput-object v4, v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a:Lcom/vungle/publisher/EventListener;

    iget-object v5, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/vungle/publisher/bm;->c()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "VungleEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "already added event listener "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_3
    return-void
.end method

.method public final varargs a([Lcom/vungle/publisher/ca;)V
    .locals 4

    .prologue
    .line 105
    const-string v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting ad streaming connectivity types "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vungle/publisher/cr;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 107
    if-eqz p1, :cond_1

    .line 108
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 109
    if-eqz v2, :cond_0

    .line 110
    iget-object v3, p0, Lcom/vungle/publisher/env/SdkConfig;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    .line 122
    new-array v3, v7, [Ljava/lang/String;

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v3, v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v2

    move v2, v1

    .line 127
    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v4, v3, v2

    .line 128
    iget-object v5, p0, Lcom/vungle/publisher/env/SdkConfig;->f:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    const-string v0, "VungleConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Missing permission - did you remember to add <uses-permission android:name=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"/> to your AndroidManifest.xml?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 127
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return v0
.end method
