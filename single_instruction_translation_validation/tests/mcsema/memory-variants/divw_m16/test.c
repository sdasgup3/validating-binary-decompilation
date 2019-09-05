void leaf() {
  __asm__("divw -4(%rbp)");
  }

void main() {
  leaf();
}