void leaf() {
  __asm__("shlq %cl, -4(%rbp)");
  }

void main() {
  leaf();
}