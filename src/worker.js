export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    const hostname =
      request.headers.get("host")?.split(":")[0].toLowerCase() || url.hostname;

    if (hostname === "blog.lavinj.dev" && url.pathname === "/") {
      url.pathname = "/blog";
    }

    return env.ASSETS.fetch(new Request(url, request));
  },
};
