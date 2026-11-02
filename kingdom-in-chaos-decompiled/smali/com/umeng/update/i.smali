.class public Lcom/umeng/update/i;
.super Ljava/lang/Object;
.source "UpdateConfig.java"


# static fields
.field public static final a:Ljava/lang/String; = "update"

.field public static final b:Ljava/lang/String; = "2.4.1.20140228"

.field public static final c:Ljava/lang/String; = "1.4"

.field public static final d:Ljava/lang/String; = "com.umeng.common.net.DownloadingService"

.field public static final e:Ljava/lang/String; = "com.umeng.update.UpdateDialogActivity"

.field public static final f:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field public static final g:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final h:Ljava/lang/String; = "android.permission.INTERNET"

.field public static final i:Ljava/lang/String; = "UMUpdateCheck"

.field private static final j:Ljava/lang/String; = "umeng_update"

.field private static final k:Ljava/lang/String; = "ignore"

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Z

.field private static o:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z

.field private static s:Z

.field private static t:Z

.field private static u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/umeng/update/i;->n:Z

    .line 33
    sput-boolean v0, Lcom/umeng/update/i;->o:Z

    .line 34
    sput-boolean v1, Lcom/umeng/update/i;->p:Z

    .line 35
    sput-boolean v0, Lcom/umeng/update/i;->q:Z

    .line 36
    sput-boolean v1, Lcom/umeng/update/i;->r:Z

    .line 37
    sput-boolean v0, Lcom/umeng/update/i;->s:Z

    .line 38
    sput-boolean v0, Lcom/umeng/update/i;->t:Z

    .line 39
    sput v1, Lcom/umeng/update/i;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/umeng/update/i;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/i;->l:Ljava/lang/String;

    .line 54
    :cond_0
    sget-object v0, Lcom/umeng/update/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 125
    sput p0, Lcom/umeng/update/i;->u:I

    .line 126
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "umeng_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/umeng/update/i;->l:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 85
    sput-boolean p0, Lcom/umeng/update/i;->n:Z

    .line 86
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/umeng/update/i;->n:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/umeng/update/i;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/umeng/common/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/i;->m:Ljava/lang/String;

    .line 62
    :cond_0
    sget-object v0, Lcom/umeng/update/i;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    sput-object p0, Lcom/umeng/update/i;->m:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 93
    sput-boolean p0, Lcom/umeng/update/i;->o:Z

    .line 94
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/umeng/update/i;->o:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "umeng_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ignore"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 77
    :cond_0
    return-object v0
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 101
    sput-boolean p0, Lcom/umeng/update/i;->p:Z

    .line 102
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/umeng/update/i;->p:Z

    return v0
.end method

.method public static d(Z)V
    .locals 0

    .prologue
    .line 109
    sput-boolean p0, Lcom/umeng/update/i;->q:Z

    .line 110
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/umeng/update/i;->q:Z

    return v0
.end method

.method public static e(Z)V
    .locals 0

    .prologue
    .line 117
    sput-boolean p0, Lcom/umeng/update/i;->r:Z

    .line 118
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/umeng/update/i;->r:Z

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 121
    sget v0, Lcom/umeng/update/i;->u:I

    return v0
.end method

.method public static f(Z)V
    .locals 0

    .prologue
    .line 133
    sput-boolean p0, Lcom/umeng/update/i;->s:Z

    .line 134
    return-void
.end method

.method public static g(Z)V
    .locals 0

    .prologue
    .line 141
    sput-boolean p0, Lcom/umeng/update/i;->t:Z

    .line 142
    return-void
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/umeng/update/i;->s:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/umeng/update/i;->t:Z

    return v0
.end method
