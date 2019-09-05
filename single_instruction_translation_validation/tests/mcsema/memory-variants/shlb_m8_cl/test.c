void leaf() {
  __asm__("shlb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}