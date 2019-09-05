void leaf() {
  __asm__("shlb %cl, %ah");
  }

void main() {
  leaf();
}