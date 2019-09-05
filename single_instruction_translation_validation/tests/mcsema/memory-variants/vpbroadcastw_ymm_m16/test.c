void leaf() {
  __asm__("vpbroadcastw -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}