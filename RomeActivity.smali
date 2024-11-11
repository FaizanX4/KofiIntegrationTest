# classes.dex

.class public Lcom/easytech/rome/android/RomeActivity;
.super Landroid/app/Activity;
.source "RomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easytech/rome/android/RomeActivity$SharePlatform;,
        Lcom/easytech/rome/android/RomeActivity$SHARE_TYPE;
    }
.end annotation


# static fields
.field public static AppVersionCode:I = 0x0

.field public static AppVersionName:Ljava/lang/String; = null

.field private static PLAYER_ID:Ljava/lang/String; = null

.field private static PLAYER_NAME:Ljava/lang/String; = null

.field static final RC_PURCHASE:I = 0x2711

.field static final RC_SIGN_IN:I = 0x2329

.field static final RC_UNUSED:I = 0x1389

.field private static RETRY_LOAD_DELAY:I = 0x64

.field private static ReloadTimes:I = 0x0

.field private static ReloadTimes2:I = 0x0

.field static final TWITTER_SHARE:I = 0x4e21

.field private static gameInitialized:Z = false

.field public static mGLView:Lcom/easytech/rome/android/ecGLSurfaceView; = null

.field private static mGameViewHeight:I = 0x0

.field private static mGameViewWidth:I = 0x0

.field private static mIsGooglePlaySignIn:Z = false

.field private static final mRequestWaitTime:I = 0x1f4

.field public static mRewardedVideoFinished:Z

.field public static mRewardedVideoFinished2:Z

.field private static mScreenCutout:I

.field private static mScreenHeight:I

.field private static mScreenWidth:I

.field private static objectActivity:Ljava/lang/Object;

.field protected static objectContext:Ljava/lang/Object;


# instance fields
.field final PLATFORMS:[Lcom/easytech/rome/android/RomeActivity$SharePlatform;

.field private TAG:Ljava/lang/String;

.field assetManager:Landroid/content/res/AssetManager;

.field private input:Landroid/widget/EditText;

.field private mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

.field public mApkInfo:Lcom/easytech/lib/ecApkInfo;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field public mBillingClient:Lcom/easytech/Billing/BillingClientLifecycle;

.field private mDecorView:Landroid/view/View;

.field private mFbCallbackManager:Lcom/facebook/CallbackManager;

.field mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field public mHandler:Lcom/easytech/rome/android/ecHandler;

.field private mIsGoogle:Z

.field private mLeaderBoardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

.field private mLoggingDialog:Landroid/app/AlertDialog;

.field private mNative:Lcom/easytech/lib/ecNative;

.field private mPlayerId:Ljava/lang/String;

.field public mScreenInfo:Lcom/easytech/lib/ecScreenInfo;

.field private mTimer:Ljava/util/Timer;

.field private mTpReward:Lcom/tradplus/ads/open/reward/TPReward;

.field private mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

.field private mWaitRequestRewardVideoTask:Ljava/util/TimerTask;

.field reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

.field reviewManager:Lcom/google/android/play/core/review/ReviewManager;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "rome"

    .line 729
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 113
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    const-class v0, Lcom/easytech/rome/android/RomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/easytech/rome/android/RomeActivity;->mIsGoogle:Z

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->mLoggingDialog:Landroid/app/AlertDialog;

    .line 149
    iput-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->assetManager:Landroid/content/res/AssetManager;

    .line 157
    iput-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward:Lcom/tradplus/ads/open/reward/TPReward;

    .line 158
    iput-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

    .line 167
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/easytech/rome/android/RomeActivity;->mTimer:Ljava/util/Timer;

    .line 168
    iput-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->mWaitRequestRewardVideoTask:Ljava/util/TimerTask;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    .line 1615
    new-instance v2, Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    const-string v3, "com.tencent.mobileqq"

    const-string v4, ""

    const-string v5, "qq"

    const-string v6, "QQ Message"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/easytech/rome/android/RomeActivity$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    const-string v2, "com.tencent.mm"

    const-string v3, "wechat"

    const-string v5, "WeChat Message"

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/easytech/rome/android/RomeActivity$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v0, v1, v5

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    const-string v5, "WeChat Moments"

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/easytech/rome/android/RomeActivity$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    const-string v2, "com.sina.weibo"

    const-string v3, "weibo"

    const-string v5, "Weibo"

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/easytech/rome/android/RomeActivity$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    const-string v2, "com.facebook.katana"

    const-string v3, "facebook"

    const-string v5, "Facebook"

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/easytech/rome/android/RomeActivity$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    const-string v2, "com.twitter.android"

    const-string v3, "twitter"

    const-string v5, "Twitter"

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/easytech/rome/android/RomeActivity$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->PLATFORMS:[Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    return-void
.end method

.method private AppFlyInit()V
    .registers 4

    .line 381
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "X9xNK7fFPQRvWtzXgkLjVo"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->startTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$4;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$4;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method private Count(I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 2351
    invoke-static {}, Lcom/easytech/rome/android/RomeActivity;->GetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2357
    :try_start_f
    sget-object v2, Lcom/easytech/rome/android/RomeActivity;->AppVersionName:Ljava/lang/String;

    .line 2358
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2359
    new-instance v4, Ljava/net/URL;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "https://www.ieasytech.com/Games/Rome/AdVideo/?id=%s&version=%s&video=%s&gid=%s&os=%d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v2, v7, v0

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v0

    const/4 p1, 0x3

    invoke-static {}, Lcom/easytech/rome/android/RomeActivity;->getUserAccount()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, p1

    const/4 p1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, p1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_44} :catch_70
    .catchall {:try_start_f .. :try_end_44} :catchall_6e

    :try_start_44
    const-string v0, "GET"

    .line 2361
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x1388

    .line 2362
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 2363
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 2364
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 2365
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_58} :catch_6b
    .catchall {:try_start_44 .. :try_end_58} :catchall_68

    if-eqz p1, :cond_5d

    .line 2376
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5d
    if-eqz v0, :cond_79

    .line 2383
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_79

    :catch_63
    move-exception p1

    .line 2387
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    :catchall_68
    move-exception v0

    move-object v1, p1

    goto :goto_7a

    :catch_6b
    move-exception v0

    move-object v1, p1

    goto :goto_71

    :catchall_6e
    move-exception v0

    goto :goto_7a

    :catch_70
    move-exception v0

    .line 2369
    :goto_71
    :try_start_71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    if-eqz v1, :cond_79

    .line 2376
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_79
    :goto_79
    return-void

    :goto_7a
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 2390
    :cond_7f
    throw v0
.end method

.method private Game_Init(Landroid/app/Activity;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 425
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_3d

    .line 429
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f00c6

    invoke-direct {v1, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 431
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0e0082

    .line 432
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 433
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0e0023

    .line 434
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$5;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$5;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 444
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_3d
    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/easytech/rome/android/RomeActivity;->mIsGoogle:Z

    .line 450
    new-instance v0, Lcom/easytech/Billing/BillingClientLifecycle;

    invoke-static {}, Lcom/easytech/rome/android/RomeActivity;->GetActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easytech/Billing/BillingClientLifecycle;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mBillingClient:Lcom/easytech/Billing/BillingClientLifecycle;

    .line 451
    invoke-virtual {v0}, Lcom/easytech/Billing/BillingClientLifecycle;->create()V

    .line 454
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 457
    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 459
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->GetScreenInfo()V

    return-void
.end method

.method public static GetActivity()Landroid/app/Activity;
    .registers 1

    .line 184
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->objectActivity:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static GetContext()Landroid/content/Context;
    .registers 1

    .line 189
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->objectContext:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private GetFaceBookLoginFail()V
    .registers 3

    .line 1426
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$33;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$33;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private GetFaceBookUserInfo(Lcom/facebook/AccessToken;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "accessToken"
        }
    .end annotation

    .line 1438
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$34;

    invoke-direct {v0, p0, p1}, Lcom/easytech/rome/android/RomeActivity$34;-><init>(Lcom/easytech/rome/android/RomeActivity;Lcom/facebook/AccessToken;)V

    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 1509
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id,name,gender,picture,locale"

    .line 1510
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 1513
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public static GetGameActivity()Lcom/easytech/rome/android/RomeActivity;
    .registers 1

    .line 194
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->objectActivity:Ljava/lang/Object;

    check-cast v0, Lcom/easytech/rome/android/RomeActivity;

    return-object v0
.end method

.method public static GetGameViewHeight()I
    .registers 1

    .line 204
    sget v0, Lcom/easytech/rome/android/RomeActivity;->mGameViewHeight:I

    return v0
.end method

.method public static GetGameViewWidth()I
    .registers 1

    .line 199
    sget v0, Lcom/easytech/rome/android/RomeActivity;->mGameViewWidth:I

    return v0
.end method

.method public static GetScreenCutout()I
    .registers 1

    .line 219
    sget v0, Lcom/easytech/rome/android/RomeActivity;->mScreenCutout:I

    return v0
.end method

.method public static GetScreenHeight()I
    .registers 1

    .line 214
    sget v0, Lcom/easytech/rome/android/RomeActivity;->mScreenHeight:I

    return v0
.end method

.method private GetScreenInfo()V
    .registers 4

    const v0, 0x7f0700b3

    .line 464
    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 465
    iget-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->mScreenInfo:Lcom/easytech/lib/ecScreenInfo;

    new-instance v2, Lcom/easytech/rome/android/RomeActivity$6;

    invoke-direct {v2, p0}, Lcom/easytech/rome/android/RomeActivity$6;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/easytech/lib/ecScreenInfo;->GetScreenInfo(Landroid/view/ViewGroup;Lcom/easytech/lib/ecScreenInfo$OnScreenInfoReadyListener;)V

    return-void
.end method

.method private GetScreenRealSize()V
    .registers 3

    .line 417
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 418
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 419
    iget v1, v0, Landroid/graphics/Point;->x:I

    sput v1, Lcom/easytech/rome/android/RomeActivity;->mScreenWidth:I

    .line 420
    iget v0, v0, Landroid/graphics/Point;->y:I

    sput v0, Lcom/easytech/rome/android/RomeActivity;->mScreenHeight:I

    return-void
.end method

.method public static GetScreenWidth()I
    .registers 1

    .line 209
    sget v0, Lcom/easytech/rome/android/RomeActivity;->mScreenWidth:I

    return v0
.end method

.method private LoggingDialog(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    if-eqz p1, :cond_3d

    const p1, 0x7f0e009d

    .line 932
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0e0068

    invoke-virtual {p0, v2}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 936
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 937
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 938
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 939
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 940
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mLoggingDialog:Landroid/app/AlertDialog;

    goto :goto_44

    .line 944
    :cond_3d
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mLoggingDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_44

    .line 945
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_44
    :goto_44
    return-void
.end method

.method private OpenKeyboard(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "getTxt"
        }
    .end annotation

    .line 1127
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$24;

    invoke-direct {v0, p0, p1}, Lcom/easytech/rome/android/RomeActivity$24;-><init>(Lcom/easytech/rome/android/RomeActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1140
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_22

    .line 1142
    sget-object p1, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$25;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$25;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1151
    :cond_22
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_3d

    .line 1153
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1156
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1159
    :cond_3d
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->input:Landroid/widget/EditText;

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$26;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$26;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static OpenQQGroup(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qqGroupUrl"
        }
    .end annotation

    .line 2495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 2496
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2497
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2502
    :try_start_11
    invoke-static {}, Lcom/easytech/rome/android/RomeActivity;->GetActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static OpenQQService(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "qqUrl"
        }
    .end annotation

    .line 2477
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 2478
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2479
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2482
    :try_start_11
    invoke-static {}, Lcom/easytech/rome/android/RomeActivity;->GetActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    const/4 p0, 0x0

    return p0
.end method

.method private RetryLoadRewardedVideo()V
    .registers 2

    .line 1766
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$38;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$38;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private RetryLoadRewardedVideo2()V
    .registers 2

    .line 2057
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$44;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$44;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private RewardedCount(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "videoId"
        }
    .end annotation

    .line 2338
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$49;

    invoke-direct {v1, p0, p1}, Lcom/easytech/rome/android/RomeActivity$49;-><init>(Lcom/easytech/rome/android/RomeActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2345
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static RewardedVideoInit()V
    .registers 2

    .line 1730
    invoke-static {}, Lcom/easytech/rome/android/tradplus/Tradplus;->CheckRewardedVideoSupport()V

    .line 1733
    invoke-static {}, Lcom/easytech/rome/android/RomeActivity;->GetGameActivity()Lcom/easytech/rome/android/RomeActivity;

    move-result-object v0

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$36;

    invoke-direct {v1}, Lcom/easytech/rome/android/RomeActivity$36;-><init>()V

    invoke-virtual {v0, v1}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Show_Game_View()V
    .registers 9

    .line 515
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 519
    :try_start_11
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_17} :catch_7f

    .line 527
    invoke-direct {p0, p0, v1, v0}, Lcom/easytech/rome/android/RomeActivity;->setPackageName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 529
    sput-boolean v0, Lcom/easytech/rome/android/ecRenderer;->isAppRunning:Z

    .line 530
    new-instance v0, Lcom/easytech/rome/android/ecGLSurfaceView;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/ecGLSurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    .line 532
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/easytech/rome/android/RomeActivity;->GetGameViewWidth()I

    move-result v1

    invoke-static {}, Lcom/easytech/rome/android/RomeActivity;->GetGameViewHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 533
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f0700b3

    .line 534
    invoke-virtual {p0, v1}, Lcom/easytech/rome/android/RomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 535
    sget-object v2, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$7;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$7;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 549
    new-instance v0, Lcom/easytech/promotion/ecPromotion;

    iget-object v3, p0, Lcom/easytech/rome/android/RomeActivity;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    const-string v4, "rome"

    const-string v5, "all"

    const-string v6, "google"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/easytech/promotion/ecPromotion;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 550
    invoke-virtual {v0}, Lcom/easytech/promotion/ecPromotion;->CheckPromotionFromServer()V

    .line 553
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mApkInfo:Lcom/easytech/lib/ecApkInfo;

    invoke-virtual {v0}, Lcom/easytech/lib/ecApkInfo;->getVersionCode()I

    move-result v0

    .line 554
    new-instance v1, Lcom/easytech/lib/CheckUpdate;

    iget-object v2, p0, Lcom/easytech/rome/android/RomeActivity;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v2, v0}, Lcom/easytech/lib/CheckUpdate;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 555
    invoke-virtual {v1}, Lcom/easytech/lib/CheckUpdate;->CheckUpdateFromServer()V

    return-void

    :catch_7f
    move-exception v0

    .line 523
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 524
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to locate assets, aborting..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private StartGooglePurchase(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ProductId",
            "orderNo"
        }
    .end annotation

    .line 756
    iget-object p2, p0, Lcom/easytech/rome/android/RomeActivity;->mBillingClient:Lcom/easytech/Billing/BillingClientLifecycle;

    invoke-virtual {p2, p1}, Lcom/easytech/Billing/BillingClientLifecycle;->pay(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/easytech/rome/android/RomeActivity;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->hideSystemUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/easytech/rome/android/RomeActivity;Lcom/facebook/AccessToken;)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->GetFaceBookUserInfo(Lcom/facebook/AccessToken;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/easytech/rome/android/RomeActivity;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/easytech/rome/android/RomeActivity;->mPlayerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/easytech/rome/android/RomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mPlayerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/easytech/rome/android/RomeActivity;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/easytech/rome/android/RomeActivity;->handleLoginResult(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .line 113
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->PLAYER_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 113
    sput-object p0, Lcom/easytech/rome/android/RomeActivity;->PLAYER_ID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .line 113
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->PLAYER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 113
    sput-object p0, Lcom/easytech/rome/android/RomeActivity;->PLAYER_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/easytech/rome/android/RomeActivity;Ljava/lang/String;)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->onShowLeaderBoardsRequested(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500()Z
    .registers 1

    .line 113
    sget-boolean v0, Lcom/easytech/rome/android/RomeActivity;->gameInitialized:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .registers 1

    .line 113
    sput-boolean p0, Lcom/easytech/rome/android/RomeActivity;->gameInitialized:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/easytech/rome/android/RomeActivity;)Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/easytech/rome/android/RomeActivity;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/easytech/rome/android/RomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/easytech/rome/android/RomeActivity;->downLoadFacebookIcon(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/easytech/rome/android/RomeActivity;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/easytech/rome/android/RomeActivity;)Lcom/tradplus/ads/open/reward/TPReward;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward:Lcom/tradplus/ads/open/reward/TPReward;

    return-object p0
.end method

.method static synthetic access$2100()I
    .registers 1

    .line 113
    sget v0, Lcom/easytech/rome/android/RomeActivity;->RETRY_LOAD_DELAY:I

    return v0
.end method

.method static synthetic access$2200()I
    .registers 1

    .line 113
    sget v0, Lcom/easytech/rome/android/RomeActivity;->ReloadTimes:I

    return v0
.end method

.method static synthetic access$2202(I)I
    .registers 1

    .line 113
    sput p0, Lcom/easytech/rome/android/RomeActivity;->ReloadTimes:I

    return p0
.end method

.method static synthetic access$2208()I
    .registers 2

    .line 113
    sget v0, Lcom/easytech/rome/android/RomeActivity;->ReloadTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/easytech/rome/android/RomeActivity;->ReloadTimes:I

    return v0
.end method

.method static synthetic access$2300(Lcom/easytech/rome/android/RomeActivity;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->RetryLoadRewardedVideo()V

    return-void
.end method

.method static synthetic access$2400(Lcom/easytech/rome/android/RomeActivity;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->loadRewardedVideo()V

    return-void
.end method

.method static synthetic access$2500(Lcom/easytech/rome/android/RomeActivity;I)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->RewardedCount(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/easytech/rome/android/RomeActivity;)Lcom/tradplus/ads/open/reward/TPReward;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/easytech/rome/android/RomeActivity;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->RetryLoadRewardedVideo2()V

    return-void
.end method

.method static synthetic access$2800(Lcom/easytech/rome/android/RomeActivity;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->loadRewardedVideo2()V

    return-void
.end method

.method static synthetic access$2900(Lcom/easytech/rome/android/RomeActivity;I)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->Count(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/easytech/rome/android/RomeActivity;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->GetFaceBookLoginFail()V

    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    .line 113
    sget v0, Lcom/easytech/rome/android/RomeActivity;->mGameViewWidth:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1

    .line 113
    sput p0, Lcom/easytech/rome/android/RomeActivity;->mGameViewWidth:I

    return p0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 113
    sget v0, Lcom/easytech/rome/android/RomeActivity;->mGameViewHeight:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1

    .line 113
    sput p0, Lcom/easytech/rome/android/RomeActivity;->mGameViewHeight:I

    return p0
.end method

.method static synthetic access$600()I
    .registers 1

    .line 113
    sget v0, Lcom/easytech/rome/android/RomeActivity;->mScreenCutout:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1

    .line 113
    sput p0, Lcom/easytech/rome/android/RomeActivity;->mScreenCutout:I

    return p0
.end method

.method static synthetic access$700(Lcom/easytech/rome/android/RomeActivity;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->Show_Game_View()V

    return-void
.end method

.method static synthetic access$800(Lcom/easytech/rome/android/RomeActivity;)Landroid/widget/EditText;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/easytech/rome/android/RomeActivity;->input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .line 113
    sput-boolean p0, Lcom/easytech/rome/android/RomeActivity;->mIsGooglePlaySignIn:Z

    return p0
.end method

.method private createFailureListener(Ljava/lang/String;)Lcom/google/android/gms/tasks/OnFailureListener;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "string"
        }
    .end annotation

    .line 918
    new-instance p1, Lcom/easytech/rome/android/RomeActivity$19;

    invoke-direct {p1, p0}, Lcom/easytech/rome/android/RomeActivity$19;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    return-object p1
.end method

.method private doLoadRewardedVideo()V
    .registers 3

    .line 1829
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward:Lcom/tradplus/ads/open/reward/TPReward;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$41;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$41;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tradplus/ads/open/reward/TPReward;->setAllAdLoadListener(Lcom/tradplus/ads/open/LoadAdEveryLayerListener;)V

    .line 1909
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward:Lcom/tradplus/ads/open/reward/TPReward;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$42;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$42;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tradplus/ads/open/reward/TPReward;->setAdListener(Lcom/tradplus/ads/open/reward/RewardAdListener;)V

    .line 2039
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward:Lcom/tradplus/ads/open/reward/TPReward;

    invoke-virtual {v0}, Lcom/tradplus/ads/open/reward/TPReward;->loadAd()V

    return-void
.end method

.method private doLoadRewardedVideo2()V
    .registers 3

    .line 2123
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$47;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$47;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tradplus/ads/open/reward/TPReward;->setAllAdLoadListener(Lcom/tradplus/ads/open/LoadAdEveryLayerListener;)V

    .line 2202
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$48;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$48;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tradplus/ads/open/reward/TPReward;->setAdListener(Lcom/tradplus/ads/open/reward/RewardAdListener;)V

    .line 2332
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

    invoke-virtual {v0}, Lcom/tradplus/ads/open/reward/TPReward;->loadAd()V

    return-void
.end method

.method private downLoadFacebookIcon(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "urlStr",
            "savePath"
        }
    .end annotation

    const-string v0, "icon.jpg"

    const/4 v1, 0x0

    .line 1523
    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_b9
    .catchall {:try_start_3 .. :try_end_e} :catchall_b6

    const/16 v3, 0xbb8

    .line 1526
    :try_start_10
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 1527
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 1530
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_b2
    .catchall {:try_start_10 .. :try_end_1a} :catchall_ae

    if-eqz v1, :cond_a3

    const/16 v3, 0x400

    :try_start_1e
    new-array v3, v3, [B

    .line 1538
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1539
    :goto_25
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_31

    const/4 v6, 0x0

    .line 1541
    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_25

    .line 1543
    :cond_31
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1546
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_59

    .line 1549
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result p2

    .line 1550
    iget-object v5, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDir is exists:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    :cond_59
    new-instance p2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1553
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1554
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1556
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1558
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " download success, path:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_9e} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_9e} :catch_b2
    .catchall {:try_start_1e .. :try_end_9e} :catchall_ae

    goto :goto_a3

    :catch_9f
    move-exception p1

    .line 1562
    :try_start_a0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_b2
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_ae

    :cond_a3
    :goto_a3
    if-eqz v2, :cond_a8

    .line 1576
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_a8
    if-eqz v1, :cond_cd

    .line 1583
    :try_start_aa
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_c9

    goto :goto_cd

    :catchall_ae
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_cf

    :catch_b2
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_bb

    :catchall_b6
    move-exception p1

    move-object p2, v1

    goto :goto_cf

    :catch_b9
    move-exception p1

    move-object p2, v1

    .line 1569
    :goto_bb
    :try_start_bb
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_ce

    if-eqz v1, :cond_c3

    .line 1576
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_c3
    if-eqz p2, :cond_cd

    .line 1583
    :try_start_c5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_cd

    :catch_c9
    move-exception p1

    .line 1587
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_cd
    :goto_cd
    return-void

    :catchall_ce
    move-exception p1

    :goto_cf
    if-eqz v1, :cond_d4

    .line 1576
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_d4
    if-eqz p2, :cond_de

    .line 1583
    :try_start_d6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    goto :goto_de

    :catch_da
    move-exception p2

    .line 1587
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1590
    :cond_de
    :goto_de
    throw p1
.end method

.method private getLoginError(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusCode"
        }
    .end annotation

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLoginError,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ecGame:"

    invoke-static {v0, p1}, Lcom/easytech/lib/ecLogUtil;->ecLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    .line 880
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_5f

    .line 884
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x2329

    .line 886
    new-instance v2, Lcom/easytech/rome/android/RomeActivity$17;

    invoke-direct {v2, p0}, Lcom/easytech/rome/android/RomeActivity$17;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    .line 893
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_5f

    .line 897
    :cond_35
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object p1

    .line 898
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 899
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p1, "Error"

    .line 900
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 901
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0e0023

    .line 902
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$18;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$18;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 910
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 911
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_5f
    :goto_5f
    return-void
.end method

.method public static getUserAccount()Ljava/lang/String;
    .registers 1

    .line 1116
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->PLAYER_ID:Ljava/lang/String;

    return-object v0
.end method

.method private handleLoginResult(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "isSuccess",
            "GooglePlayerId",
            "GooglePlayerName",
            "icon"
        }
    .end annotation

    .line 1046
    sget-boolean v0, Lcom/easytech/rome/android/RomeActivity;->gameInitialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 1051
    :cond_5
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/google_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_82

    const/4 v0, 0x0

    .line 1056
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_34

    .line 1059
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :cond_34
    if-eqz p4, :cond_42

    .line 1065
    invoke-static {p0}, Lcom/google/android/gms/common/images/ImageManager;->create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v1

    .line 1066
    new-instance v2, Lcom/easytech/rome/android/RomeActivity$22;

    invoke-direct {v2, p0, v7}, Lcom/easytech/rome/android/RomeActivity$22;-><init>(Lcom/easytech/rome/android/RomeActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p4}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    :cond_42
    const/4 p4, 0x1

    .line 1092
    sput-boolean p4, Lcom/easytech/rome/android/RomeActivity;->gameInitialized:Z

    .line 1093
    sput-object p2, Lcom/easytech/rome/android/RomeActivity;->PLAYER_ID:Ljava/lang/String;

    .line 1094
    sput-object p3, Lcom/easytech/rome/android/RomeActivity;->PLAYER_NAME:Ljava/lang/String;

    .line 1096
    iget-object p4, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/easytech/lib/ecLogUtil;->ecLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object p4, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playerName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/easytech/lib/ecLogUtil;->ecLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_82
    sget-object p4, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$23;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/easytech/rome/android/RomeActivity$23;-><init>(Lcom/easytech/rome/android/RomeActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideSystemUI()V
    .registers 4

    .line 638
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_13

    .line 640
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mDecorView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1e

    .line 642
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1e

    .line 644
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mDecorView:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private loadRewardedVideo()V
    .registers 2

    .line 1754
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$37;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$37;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadRewardedVideo2()V
    .registers 2

    .line 2045
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$43;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$43;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "googleSignInAccount"
        }
    .end annotation

    .line 831
    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    .line 832
    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mLeaderBoardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    .line 835
    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$16;

    invoke-direct {v1, p0, p1}, Lcom/easytech/rome/android/RomeActivity$16;-><init>(Lcom/easytech/rome/android/RomeActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 837
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "There was a problem getting the player!"

    .line 865
    invoke-direct {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->createFailureListener(Ljava/lang/String;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private onDisconnected()V
    .registers 5

    .line 870
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDisconnected()"

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "failed"

    const-string v2, ""

    const/4 v3, 0x0

    .line 872
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/easytech/rome/android/RomeActivity;->handleLoginResult(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private onShowLeaderBoardsRequested(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "leaderBoardId"
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowLeaderBoards->leaderBoardId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_a8

    goto :goto_5a

    :sswitch_24
    const-string v0, "rome_conquest1_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_5a

    :cond_2d
    const/4 v3, 0x4

    goto :goto_5a

    :sswitch_2f
    const-string v0, "rome_conquest2_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_5a

    :cond_38
    const/4 v3, 0x3

    goto :goto_5a

    :sswitch_3a
    const-string v0, "rome_conquest3_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_5a

    :cond_43
    const/4 v3, 0x2

    goto :goto_5a

    :sswitch_45
    const-string v0, "rome_conquest4_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_5a

    :cond_4e
    const/4 v3, 0x1

    goto :goto_5a

    :sswitch_50
    const-string v0, "rome_conquest5_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v3, 0x0

    :goto_5a
    packed-switch v3, :pswitch_data_be

    const-string p1, ""

    goto :goto_89

    :pswitch_60  #0x4
    const p1, 0x7f0e0062

    .line 1255
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_67
    const/4 v1, 0x0

    goto :goto_89

    :pswitch_69  #0x3
    const p1, 0x7f0e0063

    .line 1258
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    :pswitch_71  #0x2
    const p1, 0x7f0e0064

    .line 1261
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    :pswitch_79  #0x1
    const p1, 0x7f0e0065

    .line 1264
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    :pswitch_81  #0x0
    const p1, 0x7f0e0066

    .line 1267
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    :goto_89
    if-eqz v1, :cond_92

    .line 1276
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mLeaderBoardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/games/LeaderboardsClient;->getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_98

    .line 1278
    :cond_92
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mLeaderBoardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/LeaderboardsClient;->getLeaderboardIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 1280
    :goto_98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$30;

    invoke-direct {v1, p0, p1}, Lcom/easytech/rome/android/RomeActivity$30;-><init>(Lcom/easytech/rome/android/RomeActivity;Lcom/google/android/gms/tasks/Task;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :sswitch_data_a8
    .sparse-switch
        -0x28d31076 -> :sswitch_50
        -0x175616f7 -> :sswitch_45
        -0x5d91d78 -> :sswitch_3a
        0xba3dc07 -> :sswitch_2f
        0x1d20d586 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_81  #00000000
        :pswitch_79  #00000001
        :pswitch_71  #00000002
        :pswitch_69  #00000003
        :pswitch_60  #00000004
    .end packed-switch
.end method

.method public static rtnActivity()Ljava/lang/Object;
    .registers 1

    .line 179
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->objectContext:Ljava/lang/Object;

    return-object v0
.end method

.method private setPackageName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pContext",
            "appInfo",
            "packageName"
        }
    .end annotation

    .line 610
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 612
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 613
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mApkInfo:Lcom/easytech/lib/ecApkInfo;

    invoke-virtual {v0}, Lcom/easytech/lib/ecApkInfo;->getVersionCode()I

    move-result v0

    sput v0, Lcom/easytech/rome/android/RomeActivity;->AppVersionCode:I

    .line 614
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mApkInfo:Lcom/easytech/lib/ecApkInfo;

    invoke-virtual {v0}, Lcom/easytech/lib/ecApkInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easytech/rome/android/RomeActivity;->AppVersionName:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->assetManager:Landroid/content/res/AssetManager;

    .line 617
    invoke-static {p1, v0, p2, p3}, Lcom/easytech/rome/android/ecNativeLib;->nativeSetPaths(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserAccount(Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerId"
        }
    .end annotation

    .line 1121
    sput-object p0, Lcom/easytech/rome/android/RomeActivity;->PLAYER_ID:Ljava/lang/String;

    return-void
.end method

.method private showRewardedVideo()V
    .registers 3

    .line 1791
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$39;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$39;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1815
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$40;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$40;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1824
    sput-boolean v0, Lcom/easytech/rome/android/RomeActivity;->mRewardedVideoFinished:Z

    return-void
.end method

.method private showRewardedVideo2(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 2082
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$45;

    invoke-direct {v0, p0, p1}, Lcom/easytech/rome/android/RomeActivity$45;-><init>(Lcom/easytech/rome/android/RomeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2109
    sget-object p1, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$46;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$46;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2118
    sput-boolean p1, Lcom/easytech/rome/android/RomeActivity;->mRewardedVideoFinished2:Z

    return-void
.end method


# virtual methods
.method public CloseKeyboard()V
    .registers 3

    .line 1201
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1e

    .line 1204
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1206
    new-instance v1, Lcom/easytech/rome/android/RomeActivity$27;

    invoke-direct {v1, p0, v0}, Lcom/easytech/rome/android/RomeActivity$27;-><init>(Lcom/easytech/rome/android/RomeActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v1}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method public FacebookSignIn(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delayTime"
        }
    .end annotation

    .line 1404
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$32;

    invoke-direct {v0, p0, p1}, Lcom/easytech/rome/android/RomeActivity$32;-><init>(Lcom/easytech/rome/android/RomeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method FinishProduct(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 2465
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$51;

    invoke-direct {v0, p0, p1}, Lcom/easytech/rome/android/RomeActivity$51;-><init>(Lcom/easytech/rome/android/RomeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GooglePlaySignIn(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delayTime"
        }
    .end annotation

    .line 952
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$20;

    invoke-direct {v0, p0, p1}, Lcom/easytech/rome/android/RomeActivity$20;-><init>(Lcom/easytech/rome/android/RomeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GooglePurchaseFinished(IILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "resultCode",
            "id",
            "PurchaseData",
            "Signature"
        }
    .end annotation

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<root><PurchaseData>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</PurchaseData><SignatureData>"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</SignatureData></root>"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 800
    sget-object p4, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/easytech/rome/android/RomeActivity$14;-><init>(Lcom/easytech/rome/android/RomeActivity;IILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GoogleQueryInventoryFinished(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "idx",
            "PurchaseData",
            "Signature",
            "Payload"
        }
    .end annotation

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<root><PurchaseData>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</PurchaseData><SignatureData>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</SignatureData></root>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 814
    sget-object p3, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$15;

    invoke-direct {v0, p0, p1, p4, p2}, Lcom/easytech/rome/android/RomeActivity$15;-><init>(Lcom/easytech/rome/android/RomeActivity;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public InitProductPrice()V
    .registers 3

    .line 1384
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->IsGoogleChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1391
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$31;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$31;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1398
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    return-void
.end method

.method public InitTradplusSdk(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 2569
    invoke-static {}, Lcom/tradplus/ads/open/TradPlusSdk;->getIsInit()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2571
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+.getIsInit: false"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "205C13B41DEE5FD144D43B2EB55887AA"

    .line 2576
    invoke-static {p1, v0}, Lcom/tradplus/ads/open/TradPlusSdk;->initSdk(Landroid/content/Context;Ljava/lang/String;)V

    .line 2581
    new-instance p1, Lcom/tradplus/ads/open/reward/TPReward;

    const-string v0, "E14356AACD5E30A80F26792098F2F43F"

    invoke-direct {p1, p0, v0}, Lcom/tradplus/ads/open/reward/TPReward;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward:Lcom/tradplus/ads/open/reward/TPReward;

    .line 2582
    new-instance p1, Lcom/tradplus/ads/open/reward/TPReward;

    const-string v0, "B5EE5929032671CA79775C13C265E8D3"

    invoke-direct {p1, p0, v0}, Lcom/tradplus/ads/open/reward/TPReward;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

    .line 2584
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->doLoadRewardedVideo()V

    .line 2585
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->doLoadRewardedVideo2()V

    :cond_2a
    return-void
.end method

.method public IsGoogleChecked()Z
    .registers 2

    .line 826
    iget-boolean v0, p0, Lcom/easytech/rome/android/RomeActivity;->mIsGoogle:Z

    return v0
.end method

.method public PurchaseConfirmDialog(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "orderNo",
            "ProductId"
        }
    .end annotation

    return-void
.end method

.method public QueryInventory()V
    .registers 2

    .line 1221
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$28;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$28;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ReportScore(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "leaderBoardId",
            "score"
        }
    .end annotation

    .line 1350
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportScore->leaderBoardId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", score:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_a8

    goto :goto_6b

    :sswitch_2a
    const-string v0, "rome_conquest1_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_6b

    :cond_33
    const/4 v1, 0x5

    goto :goto_6b

    :sswitch_35
    const-string v0, "rome_conquest2_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_6b

    :cond_3e
    const/4 v1, 0x4

    goto :goto_6b

    :sswitch_40
    const-string v0, "rome_conquest3_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_6b

    :cond_49
    const/4 v1, 0x3

    goto :goto_6b

    :sswitch_4b
    const-string v0, "rome_conquest4_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto :goto_6b

    :cond_54
    const/4 v1, 0x2

    goto :goto_6b

    :sswitch_56
    const-string v0, "rome_conquest5_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_6b

    :cond_5f
    const/4 v1, 0x1

    goto :goto_6b

    :sswitch_61
    const-string v0, "rome_conquest6_high_scores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    packed-switch v1, :pswitch_data_c2

    const/4 p1, 0x0

    goto :goto_9f

    :pswitch_70  #0x5
    const p1, 0x7f0e0062

    .line 1356
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9f

    :pswitch_78  #0x4
    const p1, 0x7f0e0063

    .line 1359
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9f

    :pswitch_80  #0x3
    const p1, 0x7f0e0064

    .line 1362
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9f

    :pswitch_88  #0x2
    const p1, 0x7f0e0065

    .line 1365
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9f

    :pswitch_90  #0x1
    const p1, 0x7f0e0066

    .line 1368
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9f

    :pswitch_98  #0x0
    const p1, 0x7f0e0067

    .line 1371
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_9f
    if-eqz p1, :cond_a7

    .line 1378
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mLeaderBoardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V

    :cond_a7
    return-void

    :sswitch_data_a8
    .sparse-switch
        -0x3a5009f5 -> :sswitch_61
        -0x28d31076 -> :sswitch_56
        -0x175616f7 -> :sswitch_4b
        -0x5d91d78 -> :sswitch_40
        0xba3dc07 -> :sswitch_35
        0x1d20d586 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_98  #00000000
        :pswitch_90  #00000001
        :pswitch_88  #00000002
        :pswitch_80  #00000003
        :pswitch_78  #00000004
        :pswitch_70  #00000005
    .end packed-switch
.end method

.method public ReviewAlert()V
    .registers 3

    .line 2417
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ReviewAlert"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2419
    invoke-static {p0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->reviewManager:Lcom/google/android/play/core/review/ReviewManager;

    .line 2420
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 2421
    new-instance v1, Lcom/easytech/rome/android/-$$Lambda$RomeActivity$tUzAXhNtk4RWQRvFm_P8FYCEmck;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/-$$Lambda$RomeActivity$tUzAXhNtk4RWQRvFm_P8FYCEmck;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SetGDPR(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 2518
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$52;

    invoke-direct {v0, p0, p1}, Lcom/easytech/rome/android/RomeActivity$52;-><init>(Lcom/easytech/rome/android/RomeActivity;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tradplus/ads/open/TradPlusSdk;->setGDPRListener(Lcom/tradplus/ads/open/TradPlusSdk$TPGDPRListener;)V

    .line 2563
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->InitTradplusSdk(Landroid/content/Context;)V

    return-void
.end method

.method public ShareApp(Ljava/lang/String;I)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Lang",
            "shareType"
        }
    .end annotation

    .line 1627
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareApp->shareType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, p2, -0x1

    .line 1629
    iget-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->PLATFORMS:[Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/easytech/rome/android/RomeActivity$SharePlatform;->access$1800(Lcom/easytech/rome/android/RomeActivity$SharePlatform;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/easytech/rome/android/RomeActivity;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_44

    new-array p1, v3, [Ljava/lang/Object;

    .line 1631
    iget-object p2, p0, Lcom/easytech/rome/android/RomeActivity;->PLATFORMS:[Lcom/easytech/rome/android/RomeActivity$SharePlatform;

    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/easytech/rome/android/RomeActivity$SharePlatform;->access$1900(Lcom/easytech/rome/android/RomeActivity$SharePlatform;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "install_%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easytech/rome/android/ecNativeLib;->nativeGetLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "remind"

    invoke-static {p2, p1}, Lcom/easytech/rome/android/ecNativeLib;->nativeShowMessageBox(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_44
    const/4 v0, -0x1

    .line 1636
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v4, 0xc6b

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v1, v4, :cond_98

    const/16 v4, 0xc81

    if-eq v1, v4, :cond_8e

    const/16 v4, 0xca9

    if-eq v1, v4, :cond_84

    const/16 v4, 0xd37

    if-eq v1, v4, :cond_7a

    const/16 v4, 0xd64

    if-eq v1, v4, :cond_70

    const/16 v4, 0xe83

    if-eq v1, v4, :cond_66

    goto :goto_a1

    :cond_66
    const-string v1, "tw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v0, 0x1

    goto :goto_a1

    :cond_70
    const-string v1, "ko"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v0, 0x3

    goto :goto_a1

    :cond_7a
    const-string v1, "ja"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v0, 0x2

    goto :goto_a1

    :cond_84
    const-string v1, "en"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v0, 0x5

    goto :goto_a1

    :cond_8e
    const-string v1, "de"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v0, 0x4

    goto :goto_a1

    :cond_98
    const-string v1, "cn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v0, 0x0

    :cond_a1
    :goto_a1
    if-eqz v0, :cond_ba

    if-eq v0, v3, :cond_b7

    if-eq v0, v8, :cond_b4

    if-eq v0, v7, :cond_b1

    if-eq v0, v6, :cond_ae

    const-string v0, "Great Conqueror：Rome"

    goto :goto_bc

    :cond_ae
    const-string v0, "Großer Eroberer: Rom"

    goto :goto_bc

    :cond_b1
    const-string v0, "위대한 정복자: 로마"

    goto :goto_bc

    :cond_b4
    const-string v0, "大征服者: ローマ"

    goto :goto_bc

    :cond_b7
    const-string v0, "大征服者: 羅馬"

    goto :goto_bc

    :cond_ba
    const-string v0, "大征服者：罗马"

    :goto_bc
    if-ne p2, v5, :cond_fe

    .line 1662
    new-instance p2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "https://www.ieasytech.com/Games/Rome/Share/?type=global&lang=%s&app=facebook"

    .line 1663
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    new-instance p2, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {p2}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    .line 1665
    invoke-virtual {p2, v0}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object p2

    .line 1666
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p2

    .line 1664
    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 1667
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    .line 1668
    const-class p2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {p2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_136

    .line 1670
    iget-object p2, p0, Lcom/easytech/rome/android/RomeActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_136

    :cond_fe
    const/4 v1, 0x6

    if-ne p2, v1, :cond_136

    const/4 p2, 0x0

    .line 1679
    :try_start_102
    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;-><init>(Landroid/content/Context;)V

    .line 1680
    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->text(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "https://www.ieasytech.com/Games/Rome/Share/?type=global&lang=%s&app=twitter"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 1681
    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->url(Ljava/net/URL;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    move-result-object p2
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_120} :catch_121

    goto :goto_125

    :catch_121
    move-exception p1

    .line 1685
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_125
    if-eqz p2, :cond_131

    .line 1689
    invoke-virtual {p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->createIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x4e21

    .line 1690
    invoke-virtual {p0, p1, p2}, Lcom/easytech/rome/android/RomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_136

    :cond_131
    const-string p1, "Twitter Share Failure"

    .line 1694
    invoke-virtual {p0, p0, p1}, Lcom/easytech/rome/android/RomeActivity;->ShowToastUiThread(Landroid/content/Context;Ljava/lang/String;)V

    :cond_136
    :goto_136
    return-void
.end method

.method public ShowDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "Title",
            "Message",
            "willExit"
        }
    .end annotation

    .line 767
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$13;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/easytech/rome/android/RomeActivity$13;-><init>(Lcom/easytech/rome/android/RomeActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ShowLeaderBoard(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "leaderBoardId"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Rome ShowLeaderBoard"

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$29;

    invoke-direct {v0, p0, p1}, Lcom/easytech/rome/android/RomeActivity$29;-><init>(Lcom/easytech/rome/android/RomeActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ShowToastUiThread(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "message"
        }
    .end annotation

    .line 1716
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/easytech/rome/android/RomeActivity$35;-><init>(Lcom/easytech/rome/android/RomeActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public StartPurchase(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "orderNo",
            "productIdx",
            "platform"
        }
    .end annotation

    .line 735
    iget-object p3, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcom/easytech/rome/android/ecConfig;->IsNeedPurchaseConfirm()Z

    move-result p3

    if-eqz p3, :cond_25

    .line 739
    new-instance p3, Lcom/easytech/rome/android/RomeActivity$12;

    invoke-direct {p3, p0, p1, p2}, Lcom/easytech/rome/android/RomeActivity$12;-><init>(Lcom/easytech/rome/android/RomeActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 750
    :cond_25
    invoke-direct {p0, p2, p1}, Lcom/easytech/rome/android/RomeActivity;->StartGooglePurchase(ILjava/lang/String;)V

    :goto_28
    return-void
.end method

.method public TradPlusEnterScene(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scene"
        }
    .end annotation

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterScene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TradPlus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    goto :goto_37

    .line 2407
    :cond_20
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

    const-string v0, "D3CC94CD857312"

    invoke-virtual {p1, v0}, Lcom/tradplus/ads/open/reward/TPReward;->entryAdScenario(Ljava/lang/String;)Z

    goto :goto_37

    .line 2404
    :cond_28
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward2:Lcom/tradplus/ads/open/reward/TPReward;

    const-string v0, "159F46D856D3F5"

    invoke-virtual {p1, v0}, Lcom/tradplus/ads/open/reward/TPReward;->entryAdScenario(Ljava/lang/String;)Z

    goto :goto_37

    .line 2401
    :cond_30
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mTpReward:Lcom/tradplus/ads/open/reward/TPReward;

    const-string v0, "8B0FBBACAB2A2E"

    invoke-virtual {p1, v0}, Lcom/tradplus/ads/open/reward/TPReward;->entryAdScenario(Ljava/lang/String;)Z

    :goto_37
    return-void
.end method

.method public checkApkExist(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1704
    :try_start_1
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p1, 0x0

    :goto_b
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public doGooglePlaySignIn()V
    .registers 2

    .line 970
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$21;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$21;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/easytech/rome/android/RomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$ReviewAlert$0$RomeActivity(Lcom/google/android/gms/tasks/Task;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "task"
        }
    .end annotation

    .line 2423
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2425
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ReviewAlert success"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2427
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    .line 2428
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/easytech/rome/android/RomeActivity;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2430
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/easytech/rome/android/RomeActivity$50;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$50;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3a
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent"
        }
    .end annotation

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecGame:"

    invoke-static {v1, v0}, Lcom/easytech/lib/ecLogUtil;->ecLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mFbCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    const/16 v0, 0x2329

    if-ne p1, v0, :cond_64

    const-string p1, "onActivityResult Task,9001"

    .line 990
    invoke-static {v1, p1}, Lcom/easytech/lib/ecLogUtil;->ecLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :try_start_36
    const-string p2, "onActivityResult,9001"

    .line 996
    invoke-static {v1, p2}, Lcom/easytech/lib/ecLogUtil;->ecLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_54

    .line 1001
    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object p2

    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/games/GamesClient;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    .line 1004
    :cond_54
    invoke-direct {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_57
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_36 .. :try_end_57} :catch_58

    goto :goto_98

    :catch_58
    move-exception p1

    .line 1008
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->onDisconnected()V

    .line 1010
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    .line 1011
    invoke-direct {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->getLoginError(I)V

    goto :goto_98

    :cond_64
    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_95

    const/4 p1, -0x1

    const/4 p3, 0x0

    if-ne p2, p1, :cond_79

    const-string p1, "Twitter Share Success"

    .line 1018
    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1019
    invoke-static {}, Lcom/easytech/rome/android/ecNativeLib;->nativeShareFinish()V

    goto :goto_98

    :cond_79
    if-nez p2, :cond_88

    const-string p1, "Twitter Share Cancel"

    .line 1023
    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1024
    invoke-static {}, Lcom/easytech/rome/android/ecNativeLib;->nativeShareFinish()V

    goto :goto_98

    :cond_88
    const-string p1, "Twitter Share Failure"

    .line 1028
    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1029
    invoke-static {}, Lcom/easytech/rome/android/ecNativeLib;->nativeShareFinish()V

    goto :goto_98

    .line 1033
    :cond_95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_98
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 623
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 625
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 627
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "Screen Orientation: Landscape"

    invoke-static {p1, v0}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 629
    :cond_18
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2c

    .line 631
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "Screen Orientation: Portrait"

    invoke-static {p1, v0}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 227
    invoke-static {p1}, Lcom/easytech/lib/ecLogUtil;->ShowLog(Z)V

    .line 228
    iget-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "Lifecycle: onCreate"

    invoke-static {p1, v0}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sput-object p0, Lcom/easytech/rome/android/RomeActivity;->objectActivity:Ljava/lang/Object;

    .line 234
    sput-object p0, Lcom/easytech/rome/android/RomeActivity;->objectContext:Ljava/lang/Object;

    .line 236
    new-instance p1, Lcom/easytech/lib/ecScreenInfo;

    invoke-direct {p1, p0}, Lcom/easytech/lib/ecScreenInfo;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mScreenInfo:Lcom/easytech/lib/ecScreenInfo;

    const/4 v0, 0x3

    .line 237
    invoke-virtual {p1, v0}, Lcom/easytech/lib/ecScreenInfo;->SetDisplayCutoutMode(I)V

    const p1, 0x7f0a001d

    .line 243
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->setContentView(I)V

    const p1, 0x7f07008e

    .line 245
    invoke-virtual {p0, p1}, Lcom/easytech/rome/android/RomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->input:Landroid/widget/EditText;

    .line 247
    new-instance p1, Lcom/easytech/lib/ecNative;

    invoke-direct {p1}, Lcom/easytech/lib/ecNative;-><init>()V

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mNative:Lcom/easytech/lib/ecNative;

    .line 248
    new-instance p1, Lcom/easytech/rome/android/ecHandler;

    invoke-direct {p1, p0}, Lcom/easytech/rome/android/ecHandler;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mHandler:Lcom/easytech/rome/android/ecHandler;

    .line 249
    invoke-static {p0}, Lcom/easytech/lib/ecBitmap;->setContext(Landroid/content/Context;)V

    .line 250
    new-instance p1, Lcom/easytech/lib/ecApkInfo;

    invoke-direct {p1, p0}, Lcom/easytech/lib/ecApkInfo;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mApkInfo:Lcom/easytech/lib/ecApkInfo;

    .line 252
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 282
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mDecorView:Landroid/view/View;

    .line 283
    new-instance v0, Lcom/easytech/rome/android/RomeActivity$1;

    invoke-direct {v0, p0}, Lcom/easytech/rome/android/RomeActivity$1;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 298
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->GetScreenRealSize()V

    .line 300
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_70

    .line 301
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 303
    :cond_70
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->AppFlyInit()V

    .line 305
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->mFbCallbackManager:Lcom/facebook/CallbackManager;

    .line 308
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mFbCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$2;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$2;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 342
    invoke-direct {p0, p0}, Lcom/easytech/rome/android/RomeActivity;->Game_Init(Landroid/app/Activity;)V

    .line 344
    new-instance p1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p1, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/easytech/rome/android/RomeActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    .line 345
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mFbCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$3;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$3;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 710
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 712
    invoke-virtual {p0}, Lcom/easytech/rome/android/RomeActivity;->IsGoogleChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 713
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mBillingClient:Lcom/easytech/Billing/BillingClientLifecycle;

    invoke-virtual {v0}, Lcom/easytech/Billing/BillingClientLifecycle;->destroy()V

    .line 715
    :cond_e
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Lifecycle: onDestroy"

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 717
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_29

    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_24

    const/16 v0, 0x9

    .line 566
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    .line 567
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    if-eqz v0, :cond_22

    .line 569
    new-instance v1, Lcom/easytech/rome/android/RomeActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/easytech/rome/android/RomeActivity$8;-><init>(Lcom/easytech/rome/android/RomeActivity;F)V

    invoke-virtual {v0, v1}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_22
    const/4 p1, 0x1

    return p1

    .line 579
    :cond_24
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 581
    :cond_29
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 587
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 591
    sget-object p1, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    if-eqz p1, :cond_17

    .line 593
    new-instance p2, Lcom/easytech/rome/android/RomeActivity$9;

    invoke-direct {p2, p0}, Lcom/easytech/rome/android/RomeActivity$9;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {p1, p2}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_17
    return v1

    .line 605
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 685
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 686
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Lifecycle: onPause"

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    if-eqz v0, :cond_1e

    .line 690
    new-instance v1, Lcom/easytech/rome/android/RomeActivity$11;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$11;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 699
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mNative:Lcom/easytech/lib/ecNative;

    invoke-virtual {v0}, Lcom/easytech/lib/ecNative;->onEnterBackground()V

    const/4 v0, 0x0

    .line 702
    sput-boolean v0, Lcom/easytech/rome/android/ecRenderer;->isAppRunning:Z

    :cond_1e
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 661
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 662
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Lifecycle: onResume"

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 667
    sput-boolean v0, Lcom/easytech/rome/android/ecRenderer;->isAppRunning:Z

    .line 669
    sget-object v0, Lcom/easytech/rome/android/RomeActivity;->mGLView:Lcom/easytech/rome/android/ecGLSurfaceView;

    new-instance v1, Lcom/easytech/rome/android/RomeActivity$10;

    invoke-direct {v1, p0}, Lcom/easytech/rome/android/RomeActivity$10;-><init>(Lcom/easytech/rome/android/RomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/easytech/rome/android/ecGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 678
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->mNative:Lcom/easytech/lib/ecNative;

    invoke-virtual {v0}, Lcom/easytech/lib/ecNative;->onEnterForeground()V

    :cond_20
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 723
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 724
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Lifecycle: onStart"

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 652
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 653
    iget-object v0, p0, Lcom/easytech/rome/android/RomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Lifecycle: onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/easytech/lib/ecLogUtil;->ecLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 655
    invoke-direct {p0}, Lcom/easytech/rome/android/RomeActivity;->hideSystemUI()V

    :cond_f
    return-void
.end method
