export const getAccessToken = () => {
  return sessionStorage.getItem("token");
};

export const setAccessToken = (token) => {
  sessionStorage.setItem("token", token);
};

export const removeAccessToken = () => {
  sessionStorage.removeItem("token");
};
