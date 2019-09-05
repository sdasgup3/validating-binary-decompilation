void leaf() {
  __asm__("mulw -4(%rbp)");
  }

void main() {
  leaf();
}