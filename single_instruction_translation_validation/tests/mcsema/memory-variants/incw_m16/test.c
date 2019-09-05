void leaf() {
  __asm__("incw -4(%rbp)");
  }

void main() {
  leaf();
}