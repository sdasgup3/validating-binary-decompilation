void leaf() {
  __asm__("popq -4(%rbp)");
  }

void main() {
  leaf();
}