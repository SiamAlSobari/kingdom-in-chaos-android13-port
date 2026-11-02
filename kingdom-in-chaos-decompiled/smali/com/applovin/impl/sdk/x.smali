.class public Lcom/applovin/impl/sdk/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinLogger;

.field private final b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FileManager"

    iput-object v0, p0, Lcom/applovin/impl/sdk/x;->c:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(J)J
    .locals 2

    const-wide/32 v0, 0x100000

    div-long v0, p1, v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking up cached resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/x;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/x;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/x;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "FileManager"

    const-string v2, "Nothing to cache, skipping..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting caching of resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/applovin/impl/sdk/x;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/applovin/impl/sdk/x;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p3, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(JLandroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/x;->c()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "FileManager"

    const-string v2, "Cache has no maximum size set; skipping drop..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/x;->a(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "FileManager"

    const-string v2, "Cache has exceeded maximum size; dropping..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/applovin/impl/sdk/x;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bw;

    move-result-object v0

    const-string v1, "cache_drop_count"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "FileManager"

    const-string v2, "Cache is present but under size limit; not dropping..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aA:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method a(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing resource to filesystem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "FileManager"

    const-string v6, "Unable to write data to file"

    invoke-interface {v2, v5, v6, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_3
    :try_start_7
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method a(Ljava/io/File;)Z
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from filesystem..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from filesystem!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "FileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting caching of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v6, Lcom/applovin/impl/sdk/br;->t:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v1, v6}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v6, Lcom/applovin/impl/sdk/br;->v:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v1, v6}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    const/4 v6, 0x0

    array-length v7, v1

    invoke-virtual {v4, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-ltz v6, :cond_3

    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_4
    move v0, v2

    :goto_5
    return v0

    :cond_3
    :try_start_8
    invoke-virtual {p0, v5, p1}, Lcom/applovin/impl/sdk/x;->a(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_13
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v1

    if-nez v1, :cond_7

    if-eqz v4, :cond_4

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    :try_start_a
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :cond_6
    :goto_8
    move v0, v2

    goto :goto_5

    :cond_7
    :try_start_c
    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v6, "FileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caching completed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v4, :cond_8

    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_8
    :goto_9
    if-eqz v5, :cond_9

    :try_start_e
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :cond_9
    :goto_a
    if-eqz v0, :cond_a

    :try_start_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    :cond_a
    :goto_b
    move v0, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v3, v4

    :goto_c
    :try_start_10
    iget-object v5, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v6, "FileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to cache \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" into \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v4, :cond_b

    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    :cond_b
    :goto_d
    if-eqz v3, :cond_c

    :try_start_12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    :cond_c
    :goto_e
    if-eqz v1, :cond_d

    :try_start_13
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    :cond_d
    :goto_f
    move v0, v2

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_10
    if-eqz v4, :cond_e

    :try_start_14
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    :cond_e
    :goto_11
    if-eqz v5, :cond_f

    :try_start_15
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10

    :cond_f
    :goto_12
    if-eqz v1, :cond_10

    :try_start_16
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11

    :cond_10
    :goto_13
    throw v0

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_4

    :catch_6
    move-exception v1

    goto/16 :goto_6

    :catch_7
    move-exception v1

    goto/16 :goto_7

    :catch_8
    move-exception v0

    goto/16 :goto_8

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v0

    goto :goto_b

    :catch_c
    move-exception v0

    goto :goto_d

    :catch_d
    move-exception v0

    goto :goto_e

    :catch_e
    move-exception v0

    goto :goto_f

    :catch_f
    move-exception v2

    goto :goto_11

    :catch_10
    move-exception v2

    goto :goto_12

    :catch_11
    move-exception v1

    goto :goto_13

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_10

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v5, v3

    goto :goto_10

    :catch_12
    move-exception v0

    move-object v1, v4

    move-object v3, v5

    goto/16 :goto_c

    :catch_13
    move-exception v1

    move-object v3, v5

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_c
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/x;->b(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b()J
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aB:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/x;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "al"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "al"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/x;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aC:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/x;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/x;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method d(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "FileManager"

    const-string v2, "Cannot empty file cache after SDK has completed initialization and ad loads are in progress!"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "FileManager"

    const-string v2, "Compacting cache..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/x;->e(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p1}, Lcom/applovin/impl/sdk/x;->a(JLandroid/content/Context;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "FileManager"

    const-string v3, "Caught exception while compacting cache!"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bu;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/br;->aA:Lcom/applovin/impl/sdk/bt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bu;->b()V

    goto :goto_0
.end method

.method e(Landroid/content/Context;)J
    .locals 14

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/x;->b()J

    move-result-wide v5

    const-wide/16 v0, -0x1

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    iget-object v9, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/x;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v11

    sub-long v11, v7, v11

    cmp-long v11, v11, v5

    if-lez v11, :cond_0

    iget-object v4, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v11, "FileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has expired, removing..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/x;->a(Ljava/io/File;)Z

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bw;

    move-result-object v0

    const-string v4, "cached_files_expired"

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/bw;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v2, v11

    goto :goto_1

    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v2
.end method

.method f(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/x;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/x;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/x;->a(Ljava/io/File;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
